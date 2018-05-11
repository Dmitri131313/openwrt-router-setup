fpopic@lenovo ~> sudo service network-manager stop

fpopic@lenovo ~> sudo ifconfig enp1s0 192.168.1.2 netmask 255.255.255.0 

fpopic@lenovo ~> sudo route add default gw 192.168.1.1

fpopic@lenovo ~> ifconfig enp1s0 
	enp1s0    Link encap:Ethernet  HWaddr 68:f7:28:09:05:21  
		      inet addr:192.168.1.2  Bcast:192.168.1.255  Mask:255.255.255.0
		      inet6 addr: fe80::b118:968e:4a9:a3ba/64 Scope:Link
		      UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
		      RX packets:0 errors:0 dropped:0 overruns:0 frame:0
		      TX packets:88 errors:0 dropped:0 overruns:0 carrier:0
		      collisions:0 txqueuelen:1000 
		      RX bytes:0 (0.0 B)  TX bytes:15470 (15.4 KB)


fpopic@lenovo ~> telnet 192.168.1.1
	Trying 192.168.1.1...
	Connected to 192.168.1.1.
	Escape character is '^]'.

	 === IMPORTANT ============================
	  Use 'passwd' to set your login password
	  this will disable telnet and enable SSH
	 ------------------------------------------


	BusyBox v1.19.4 (2013-07-16 19:54:34 CST) built-in shell (ash)
	Enter 'help' for a list of built-in commands.

	  _______                     ________        __
	 |       |.-----.-----.-----.|  |  |  |.----.|  |_
	 |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
	 |_______||   __|_____|__|__||________||__|  |____|
		      |__| W I R E L E S S   F R E E D O M
	 -----------------------------------------------------
	 ATTITUDE ADJUSTMENT (12.09[SLboat_Mod_Build_20130716], r37346)
	 -----------------------------------------------------
	  * 1/4 oz Vodka      Pour all ingredients into mixing
	  * 1/4 oz Gin        tin with ice, strain into glass.
	  * 1/4 oz Amaretto
	  * 1/4 oz Triple sec
	  * 1/4 oz Peach schnapps
	  * 1/4 oz Sour mix
	  * 1 splash Cranberry juice
	 -----------------------------------------------------
	root@(none):/# 

root@(none):/#  mount_root // to mount in write mode

root@(none):/#  firstboot 	// to revert all files to original state

root@(none):/#  passwd   	// set password to enable ssh

root@(none):/# /etc/init.d/uhttpd enable  // to enable luci via browser

root@(none):/# /etc/init.d/uhttpd start

root@(none):/# vi /etc/config/network // to change ip addr to 192.168.100.1

root@(none):/# reboot -f 	// restart router

fpopic@lenovo ~> sudo ifconfig enp1s0 192.168.100.99 netmask 255.255.255.0



fpopic@lenovo ~> ssh 192.168.100.1 -l root


fpopic@lenovo ~> sudo ip addr flush enp1s0  // to remove static ip

fpopic@lenovo ~> sudo service network-manager restart // to use dhcp client

