#Installing ET Intelligence in Bro

1. Make a new directory for the ET bro iprep files to live in

````
[rsh@sensor1 opt]$ mkdir /opt/etpro_bro
[rsh@sensor1 opt]$ cd /opt/etpro_bro
````

2. Grab __load__.bro and etpro_intel.bro from the EmergingThreats github at https://github.com/EmergingThreats/bro.

__load__.bro is a file that bro requires to know which .bro script in this
directory to load.

etpro_intel.bro defines which reputation list categories you would like to use on your sensors. Simply uncomment the
categories that you want to use. Take care with the commas and quotes. Make sure that the last file listed does not have a comma after it.

3. Modify your local.bro file to include this newly created script at the bottom of the file. By default this file
exists at /usr/local/bro/share/bro/site/local.bro.

````
[rsh@sensor1 etpro_bro]$ cat /usr/local/bro/share/bro/local.bro

#ETPRO IP and Domain Reputation Intel
@load /opt/etpro_bro
````

4. Create an hourly Cron job to update the reputation data. Make sure to include your Authorization Code
provided to you in your ET Intelligence subscription. You don't have to worry about telling Bro about the
new files, it will see them when the date of the file changes.

This will wget the archive of all the files which is ~1.9M compressed. It will then decompress the files to
the directory our script expects them to be in.

````
0 * * * * wget -q https://rules.emergingthreats.net/<authorization code>/reputation/brorepdata.tar.gz
&& tar -xzf bro-repdata.tar.gz -C /opt/etpro_bro && rm -rf bro-repdata.tar.gz > /dev/null
2>&1
````

5. Restart Bro: After Bro knows the intel file exists and loads it, updates of the intel files will be processed
by bro automatically. Execute the following commands:

````
[rsh@sensor1 etpro_bro]$ /usr/local/bro/bin/broctl
[BroControl] > stop
stopping worker-1-1 ...
stopping worker-1-2 ...
stopping worker-1-3 ...
stopping worker-1-4 ...
stopping proxy-1 ...
stopping manager ...
[BroControl] > install
removing old policies in /opt/bro/spool/installed-scripts-do-not-touch/site ...
removing old policies in /opt/bro/spool/installed-scripts-do-not-touch/auto ...
creating policy directories ...
installing site policies ...
generating cluster-layout.bro ...
generating local-networks.bro ...
generating broctl-config.bro ...
generating broctl-config.sh ...
updating nodes ...
[BroControl] > check
manager scripts are ok.
proxy-1 scripts are ok.
worker-1-1 scripts are ok.
worker-1-2 scripts are ok.
worker-1-3 scripts are ok.
worker-1-4 scripts are ok.
[BroControl] > start
starting manager ...
starting proxy-1 ...
starting worker-1-1 ...
starting worker-1-2 ...
starting worker-1-3 ...
starting worker-1-4 ...
[BroControl] > netstats
worker-1-1: 1444998097.745909 recvd=11 dropped=0 link=11
worker-1-2: 1444998097.945996 recvd=11 dropped=0 link=11
worker-1-3: 1444998098.146930 recvd=11 dropped=0 link=11
worker-1-4: 1444998098.346975 recvd=11 dropped=0 link=11
[BroControl] > exit
````

6. Installation Complete

You should now see events coming into the intel.log and notice.log once you start getting hits on ET intelligence
data.

The alert will give you the category and score of that particular indicator.

````
1443106773.411865 CGEsYb3jQDXusALSYi x.x.x.x 44319 202.108.23.29 80 - - - 202.108.23.29 Intel::ADDR Conn::IN_RESP ETPRO Rep: SpywareCnC Score: 107
````
