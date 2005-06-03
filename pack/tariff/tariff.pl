#!/usr/bin/perl -w

###############################################################################
# Radius tariff statistics generator v. 4.010d (C) Alexey Gradovtsev, 2003-2004
# E-mail: agradov@main.sdg.neva.ru
# FidoNet: 2:5030/1247.7
#
# Thanks to:
# Denis Voituk (E-mail: fido5012@zaural.net, FidoNet: 2:550/5012)
# Sergey Kuznetsov (E-mail: dj_grey@pochta.ws, FidoNet: 2:5004/60.31)
#
# Version:  4.010d
# Last modified:  11/01/2004
###############################################################################

##############################################################################
# This program is being distributed as freeware. It may be used, distributed
# and modified by anyone, as long as this notice and the header above remain 
# intact. This program is being distributed "as is" and without warranty 
# of any kind. In no event shall I incur a liability for any damages, losses 
# and/or fatal consequences of the program's action.
##############################################################################

###########################################################################
# Known bugs
# The program does not handle correctly those input parameters presenting
# time periods which cross time boundaries of daylight saving changes.
# Namely, the program considers such periods shifted for an hour, relative 
# to the real periods. This causes an inaccuracy in calculations. 
# I'm thinking of the ways of avoiding this problem and would be grateful 
# for any help. However, if your system does not make daylight saving 
# changes, you are lucky.
###########################################################################

use 5.004;
use Fcntl qw(:flock);
use Time::Local;
use Getopt::Long;
use strict;

###########################
# Global arrays and values
###########################
my (@time_period, @node);
my ($cost_IP, $cost_dial, $cost_all, $cost_factor);
my ($process_all_log, $process_all_nodes) = (0, 0);

{
my ($radius_log_file, $output_file);

############################
# Configuration parameters.
# You must define default values here. Each of these only affects 
# if the corresponding command-line parameter is not specified, 
# and is overwritten by the corresponding command-line parameter.
# Run this script with -? key for help on command-line parameters.
###################################################################

# Name of Radius logfile to process. Examples:
# $radius_log_file = 'tariff.log';
# $radius_log_file = 'd:\path\tariff.log';
# $radius_log_file = 'd:/path/tariff.log';
$radius_log_file = 'tariff.log';

# Name of output file to write statistics to. If equal to STDOUT or hyphen (-),
# the statistics is written to the standard output device. Examples:
# $output_file = 'STDOUT';
# $output_file = 'tariff.stat';
$output_file = 'tariff.stat';

# Date and time interval (intervals) to process log data within, in the form: 
# ('DAY.HOUR:MIN-DAY.HOUR:MIN', 'DAY.HOUR:MIN-DAY.HOUR:MIN', ...)
# where DAY - number of days ago from the current date (0 defines today),
#               HOUR:MIN - time at the date specified. 
# Keyword ALL forces to process all the log file. You are also allowed to use
# keywords TODAY, YESTERDAY instead of numeric DAY value. Examples:
# @time_period = 'All';
# @time_period = '21.17:20-21.17:25';
# @time_period = '21.17:20-21.17:25,14.17:20-12.17:25,1.00:00-0.24:0';
# @time_period = '21.17:20-21.17:25,14.17:20-12.17:25,Yesterday.00:00-Today.24:0';
@time_period = 'All';

# FTN addresses, in 4d-format, of those nodes to gather statistics about.
# Keyword ALL forces statistics gathering about all the nodes found. 
# Keyword NONE can be used to output summary statistics only. Examples:
# @node = 'All';
# @node = 'None';
# @node = '2:550/5012.0,2:5030/1247.7';
@node = 'All';

# IP_price/Dial-up_price ratio. This factor is used for calculation of 
# IP-sessions cost in order to take into account rate of exchange.
# I.e., cost of IP-sessions and total cost are calculated from Radius-log
# tariffs using formula:
#       IP_cost = cost_factor*IP_tariff,
#       Total_cost = Dial-up_cost + IP_cost.
# Example:
# $cost_factor = 1;
# $cost_factor = 0.5;
$cost_factor = 1;


###############################################################################
###############################################################################
##############           DO NOT CHANGE CODE BELOW!          ###################
###############################################################################
###############################################################################

###############################
# Read command-line parameters
###############################
my (@n_opts, @p_opts);
Getopt::Long::Configure('prefix_pattern=--|-|/');
unless (        GetOptions ('h|?' => sub {      help_info (0);  },
                                                'l=s' => \$radius_log_file,
                                                'o=s' => \$output_file,
                                                'f=f' => \$cost_factor,
                                                'p=s' => \@p_opts,
                                                'n=s' => \@n_opts)      )       {
        help_info (1);
}
@time_period = split(/,/, join(',', @p_opts ? @p_opts : @time_period));
@node = split(/,/, join(',', @n_opts ? @n_opts : @node));

####################
# Define log values
####################
my ($direction, $transport, $address, $origin,
        $start_time, $stop_time, $Mb_received, $Mb_transmitted, $cost);

#############
# Initialize
#############
my $time_beg = time;
foreach (@node) {
        if (/^all$/i or /^none$/i) {
                if (/^all$/i)
                        {       $process_all_nodes = 1; }
                @node = ();
                last;
        }
}
unshift @node, 'All nodes';
######################################################
# At first, @node list contained only node addresses.
# From now, it will contain all the information about nodes.
#############################################################
foreach (@node) {
        $_ = {
                ADDRESS => $_,
                SESSIONS => {   IN => 0, OUT => 0, ALL => 0     },
                TRAFFIC => {    IN => 0, OUT => 0       },
                TIME => {       IN => 0, OUT => 0, ALL => 0     }
        }
}
$cost_IP = $cost_dial = $cost_all = 0;

###############
# Calculations
###############
my ($loc_sec, $loc_min, $loc_hour, $loc_mday, $loc_mon,
        $loc_year, $loc_wday, $loc_yday, $loc_isdst) = localtime $time_beg;
my $nowday_secs = $time_beg - (($loc_hour*60 + $loc_min)*60 + $loc_sec);

foreach (@time_period) {
        if (lc eq 'all')        {
                $process_all_log = 1;
                last;
        }
        /([\d\w]+)\.(\d{1,2}):(\d{1,2})-([\d\w]+)\.(\d{1,2}):(\d{1,2})/;
        my ($since, $till) = ($1, $4);
        if (lc $since eq 'today')       {       $since = 0;     }
        elsif (lc $since eq 'yesterday')        {       $since = 1;     }
        if (lc $till eq 'today')        {       $till = 0;      }
        elsif (lc $till eq 'yesterday')         {       $till = 1;      }
        $since = $nowday_secs + ((-$since*24 + $2)*60 + $3)*60;
        $till = $nowday_secs + ((-$till*24 + $5)*60 + $6 + 1)*60;
        $_ = {  LOW => $since, UP => $till      };
}


##############
# Process log
##############
open (RADIUS_LOG_FILE, $radius_log_file) or die "Cannot open $radius_log_file: $!";
flock (RADIUS_LOG_FILE, LOCK_SH) or die "Cannot lock $radius_log_file: $!";

my ($firststr, $laststr);
$firststr = $_ = <RADIUS_LOG_FILE>;
do {{

        ($direction, $transport, $address, $origin, $start_time, $stop_time, 
                $Mb_received, $Mb_transmitted, $cost) = split /;/;
        unless (defined $cost)  {
                chomp;
                help_info (2, $radius_log_file);
                next;
        }
        next unless ($process_all_log or check_time_period ($start_time));

        $cost =~ tr/,/./;
        $Mb_received =~ tr/,/./;
        $Mb_transmitted =~ tr/,/./;
        my $i = 0;
        my ($insert, $add, $duration);
        while (1) {
                # Here we determine if we are to insert this node in the @node list
                # or we've already got it in the list (and hence only have to update its info)
                $insert = $add = 0;
                if ($i > $#node) {
                        if ($process_all_nodes) {       $insert = $add = 1;     }
                        else                                    {       last;   }
                }
                elsif ($i) {
                        if ($process_all_nodes) {       
                                unless (my $compare = compare ($address, $node[$i]{'ADDRESS'}))
                                        {       $add = 1;       }
                                elsif ($compare < 0)
                                        {       $insert = $add = 1;     }
                        }
                        elsif ($address eq $node[$i]{'ADDRESS'}) 
                                {       $add = 1;       }
                }
                else    {       $add = 1;       }

                if ($insert) {
                        splice @node, $i, 0, 
                                {       ADDRESS => $address,
                                        SESSIONS => {   IN => 0, OUT => 0, ALL => 0     },
                                        TRAFFIC => {    IN => 0, OUT => 0       },
                                        TIME => {       IN => 0, OUT => 0, ALL => 0     }       };
                }
                if ($add) {
                        $node[$i]{'SESSIONS'}{'ALL'}++;
                        $duration = int((date_to_secs ($stop_time) - date_to_secs ($start_time) + 60) / 60);
                        $node[$i]{'TIME'}{'ALL'} += $duration;
                        if ($direction eq 'in') {
                                $node[$i]{'SESSIONS'}{'IN'}++;
                                $node[$i]{'TIME'}{'IN'} += $duration;
                        }
                        else {
                                $node[$i]{'SESSIONS'}{'OUT'}++;
                                $node[$i]{'TIME'}{'OUT'} += $duration;
                        }
                        $node[$i]{'TRAFFIC'}{'IN'} += $Mb_received;
                        $node[$i]{'TRAFFIC'}{'OUT'} += $Mb_transmitted;
                        if ($i)
                                {       last;   }
                        else {
                                ($transport eq 'ip') ? ($cost_IP += $cost) : ($cost_dial += $cost);     
                        }
                }
                last if ($insert);
                $i++;
        }
        $laststr = $_;

}} while (<RADIUS_LOG_FILE>);

close(RADIUS_LOG_FILE);

push @node, {   ADDRESS => 'Total',
                                SESSIONS => {   IN => sum ('SESSIONS', 'IN'), OUT => sum ('SESSIONS', 'OUT'), ALL => sum ('SESSIONS', 'ALL')    },
                                TRAFFIC => {    IN => sum ('TRAFFIC', 'IN'), OUT => sum ('TRAFFIC', 'OUT')      },
                                TIME => {       IN => sum ('TIME', 'IN'), OUT => sum ('TIME', 'OUT'), ALL => sum ('TIME', 'ALL')        }       }
        if ($#node);
$cost_IP *= $cost_factor;
$cost_all = $cost_dial + $cost_IP;
foreach my $node (@node)        {
        $node->{'TRAFFIC'}{'IN'} = sprintf("%.3f", $node->{'TRAFFIC'}{'IN'});
        $node->{'TRAFFIC'}{'OUT'} = sprintf("%.3f", $node->{'TRAFFIC'}{'OUT'});
}
foreach ($cost_IP, $cost_dial, $cost_all)
        {       $_ = sprintf("%.5f", $_);       }

#########
# Output
#########
if ($output_file ne '-' and $output_file ne 'STDOUT') {
        $output_file =~ s#^(\s)#./$1#;
        open (STDOUT, "> $output_file\0") or die "Cannot open $output_file: $!";
        flock (STDOUT, LOCK_EX) or die "Cannot lock $output_file: $!";
}

print_results ($time_beg, (split /;/, $firststr)[4], (split /;/, $laststr)[5]);
close(STDOUT);

}




sub check_time_period
{
        my $logdate_secs = date_to_secs (shift);
        foreach my $i (0 .. $#time_period) {
                return 1 if ($logdate_secs > $time_period[$i]{'LOW'} 
                                        and $logdate_secs < $time_period[$i]{'UP'});
        }
        return 0;
}




sub date_to_secs
{
        my $time = shift;

        $time =~ /(\d{1,2})\.(\d{1,2})\.(\d{2,4})\s(\d{1,2}):(\d{1,2}):(\d{1,2})/;
        my ($log_mday, $log_mon, $log_year, $log_hour, $log_min, $log_sec) = 
                ($1, $2, $3, $4, $5, $6);
        $log_year = $log_year + 2000 if (length($log_year) == 2);

        return timelocal ($log_sec,$log_min,$log_hour,$log_mday,$log_mon-1,$log_year);
}




sub compare
{
        my ($first, $second) = @_;

        $first =~ /(\d+):(\d+)\/(\d+)\.(\d+)/;
        my ($fz, $fn, $ff, $fp) = ($1, $2, $3, $4);
        $second =~ /(\d+):(\d+)\/(\d+)\.(\d+)/;
        my ($sz, $sn, $sf, $sp) = ($1, $2, $3, $4);

        unless ($fz == $sz) {
                $fz < $sz ? return -1 : return 1;
        }
        unless ($fn == $sn) {
                $fn < $sn ? return -1 : return 1;
        }
        unless ($ff == $sf) {
                $ff < $sf ? return -1 : return 1;
        }
        unless ($fp == $sp) {
                $fp < $sp ? return -1 : return 1;
        }
        return 0;
}




sub sum
{
        my ($sum, $j, $k) = (0, @_);
        for my $i (1 .. $#node)
                {       $sum += $node[$i]{$j}{$k};      }
        return $sum;
}




sub print_results
{
        my ($time_beg, $firstdate, $lastdate) = @_;
        my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst);
        my ($usec, $umin, $uhour, $umday, $umon, $uyear, $uwday, $uyday, $uisdst);
        my @months = ('Jan ', 'Feb ', 'Mar ', 'Apr ', 'May ', 'Jun ', 'Jul ', 'Aug ', 'Sep ', 'Oct ', 'Nov ', 'Dec ');
        my ($period, $i);

format STDOUT_TOP = 

                        . . .  Cost statistics  . . .


.
format STDOUT =
@||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
$period
.
format LINK = 
           º @<<<<<<<<<<<<<<<<<< º @||||||| ³ @||||||| ³ @||||||| º
$node[$i]{'ADDRESS'}, $node[$i]{'SESSIONS'}{'IN'}, $node[$i]{'SESSIONS'}{'OUT'}, $node[$i]{'SESSIONS'}{'ALL'}
.
format TRANSFER = 
º @<<<<<<<<<<<<<<<<<< º @||||||| ³ @||||||| ³ @||||||| ³ @||||||| ³ @||||||| º
$node[$i]{'ADDRESS'}, $node[$i]{'TIME'}{'IN'}, $node[$i]{'TIME'}{'OUT'}, $node[$i]{'TIME'}{'ALL'}, $node[$i]{'TRAFFIC'}{'IN'}, $node[$i]{'TRAFFIC'}{'OUT'}
.
format COST = 
                               ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ 
                               ³    Costs    ³Þ
                               ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÞ
                                 ßßßßßßßßßßßßßß

          ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
          º  IP sessions (*) ³ Dial-up sessions ³       All        º
          ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¶
          º @||||||||||||||| ³ @||||||||||||||| ³ @||||||||||||||| º
                        $cost_IP,                  $cost_dial,            $cost_all
          ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ¼

 (*) Cost factor: @<<<<<<<<<<<<<<<<<<<<
                                  $cost_factor
.
format BOTTOM = 


ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ
 Created at @</@</@<<< @<:@<.   Time used: @<:@<
        $mday, $mon, $year, $hour, $min,        $umin, $usec
 Radius tariff statistics generator v. 4.010d (C) Alexey Gradovtsev, 2003-2004
.
        $= = 1000000;

        foreach $i (0 .. $#time_period) {
                if ($process_all_log) {
                        $firstdate =~ /(\d{1,2})\.(\d{1,2})\.(\d{2,4})\s(\d{1,2}):(\d{1,2}):(\d{1,2})/;
                        my ($log_mday, $log_mon, $log_year, $log_hour, $log_min, $log_sec) = 
                                ($1, $2, $3, $4, $5, $6);
                        $log_year = $log_year + 2000 if (length($log_year) == 2);
                        $period = "From $log_hour:$log_min, $log_mday ".$months[$log_mon-1].$log_year;
                        $lastdate =~ /(\d{1,2})\.(\d{1,2})\.(\d{2,4})\s(\d{1,2}):(\d{1,2}):(\d{1,2})/;
                        ($log_mday, $log_mon, $log_year, $log_hour, $log_min, $log_sec) = 
                                ($1, $2, $3, $4, $5, $6);
                        $log_year = $log_year + 2000 if (length($log_year) == 2);
                        $period .= " to $log_hour:$log_min, $log_mday ".$months[$log_mon-1].$log_year;
                        write;
                        last;
                }
                ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime ($time_period[$i]{'LOW'});
                $year += 1900; $min =~ s/^(\d)$/0$1/; $hour =~ s/^(\d)$/0$1/;
                $period = "From $hour:$min, $mday ".$months[$mon].$year;
                ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime ($time_period[$i]{'UP'}-60);
                $year += 1900; $min =~ s/^(\d)$/0$1/; $hour =~ s/^(\d)$/0$1/;
                $period .= " to $hour:$min, $mday ".$months[$mon].$year;
                write;
        }
        print "\n\n                               ÚÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ 
                               ³ Link table  ³Þ
                               ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÙÞ
                                 ßßßßßßßßßßßßßß\n
           ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍ»
           º     FTN Address     º   N In   ³  N Out   ³  N All   º
           ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍ¹\n";

        $~ = 'LINK';
        for $i (1 .. $#node-1) {
                write;
        }
        if ($#node) {
                unless ($process_all_nodes) {
                        print "           ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ×ÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄ¶\n";
                        $i = $#node;
                        write;
                }
                print "           ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍ¹\n";
        }
        $i = 0;
        write;
        print "           ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍ¼\n\n
                             ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿ 
                             ³ Transfer table  ³Þ
                             ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÞ
                               ßßßßßßßßßßßßßßßßßß\n
ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍÑÍÍÍÍÍÍÍÍÍÍ»
º     FTN Address     º Time in  ³ Time out ³ Time all ³ Sent, Mb ³ Rece, Mb º
ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍ¹\n";
        $~ = 'TRANSFER';
        for $i (0 .. $#node) {
                ($node[$i]{'TIME'}{'ALL'} = (int ($node[$i]{'TIME'}{'ALL'}/60) .':'. ($node[$i]{'TIME'}{'ALL'}%60))) =~ s/:(\d)$/:0$1/;
                ($node[$i]{'TIME'}{'IN'} = int ($node[$i]{'TIME'}{'IN'}/60) .':'. ($node[$i]{'TIME'}{'IN'}%60)) =~ s/:(\d)$/:0$1/;
                ($node[$i]{'TIME'}{'OUT'} = int ($node[$i]{'TIME'}{'OUT'}/60) .':'. ($node[$i]{'TIME'}{'OUT'}%60)) =~ s/:(\d)$/:0$1/;
        }
        for $i (1 .. $#node-1) {
                write;
        }
        if ($#node) {
                unless ($process_all_nodes) {
                        print "ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ×ÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄ¶\n";
                        $i = $#node;
                        write;
                }
                print "ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍ¹\n";
        }
        $i = 0;
        write;
        print "ÈÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍÏÍÍÍÍÍÍÍÍÍÍ¼\n\n\n";
        $~ = 'COST';
        write;

        my $time_end = time;
        ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime $time_end;
        $year += 1900; $min =~ s/^(\d)$/0$1/; $hour =~ s/^(\d)$/0$1/; $mday =~ s/^(\d)$/0$1/; 
        $mon += 1; $mon =~ s/^(\d)$/0$1/;
        ($usec, $umin, $uhour, $umday, $umon, $uyear, $uwday, $uyday, $uisdst) = localtime ($time_end - $time_beg);
        $usec =~ s/^(\d)$/0$1/; $umin =~ s/^(\d)$/0$1/;
        $~ = 'BOTTOM';
        write;
}




sub help_info
{
        $0 =~ m![\\/]([^\\/]+)$!; 
        unless (my $code = shift) {
                print "\nRadius tariff statistics generator v. 4.010d (C) Alexey Gradovtsev, 2003-2004\n";
                print "Usage: $1  [-Option_1 [-Option_2 ...]]\n\n";
                print "Options:\n";
                print " ? | h\t\tThis help info (see also comments in the script's body).\n";
                print " l Log_name\tName of Radius logfile to process.\n";
                print " o Output_file\tName of a file to write statistics to. If equal to STDOUT or\n";
                print "\t\thyphen (-), the statistics is written to the standard output.\n";
                print " p Period_1[,Period_2,...Period_n]\n";
                print "\t\tDate and time interval (intervals) to process log data within.\n";
                print "\t\tPeriod format: DAY.HOUR:MIN-DAY.HOUR:MIN\n";
                print "\t\twhere DAY - number of days ago from the current date (0 defines\n";
                print "\t\ttoday), HOUR:MIN - time at the date specified. Keyword ALL\n";
                print "\t\tforces to process all the log file. You are also allowed to use\n";
                print "\t\tkeywords TODAY, YESTERDAY instead of numeric DAY value.\n";
                print " n Node_1[,Node_2,...Node_n]\n";
                print "\t\tFTN addresses, in 4d-format, of those nodes to gather\n";
                print "\t\tstatistics about. Keyword ALL forces statistics gathering about\n";
                print "\t\tall the nodes found. Keyword NONE can be used to output summary\n";
                print "\t\tstatistics only.\n";
                           all the nodes found. Keyword NONE can be used to output summary 
                print " f Cost_factor\tRate of exchange: IP_currency/Dial-up_currency. It is used to\n";
                print "\t\tcompute IP-sessions cost using Radius-log tariffs, by formula:\n";
                print "\t\t\tIP_cost = cost_factor*IP_tariff";
                exit 0;
        }
        elsif ($code == 1) {
                print STDERR "\nError: Illegal syntax.\n";
                print STDERR "Type '$1 -h' for help.\n";
                exit 1;
        }
        elsif ($code == 2) {
                my $radius_log_file = shift;
                print STDERR "\nWarning: Syntax error in $radius_log_file at line $.:\n".$_."\nString format required:\n";
                print STDERR "Session_dir;Transport;4d address;IP/telephone;Start time (DD.MM.YYYY HH:MM:SS); Stop time (DD.MM.YYYY HH:MM:SS);Mb transmitted;Mb received;Session cost\n";
        }
}