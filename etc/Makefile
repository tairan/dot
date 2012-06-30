install:
	cp hosts-default hosts-tmp
	rm -f hosts
	wget https://raw.github.com/davidsun/HostsFile/master/hosts
	cat hosts >> hosts-tmp
	cat google-ipv6-hosts >> hosts-tmp
	mv hosts-tmp /etc/hosts
	rm -f hosts
