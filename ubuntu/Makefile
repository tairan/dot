install: repositories
	echo "starting to install..."

repositories: prefix
	add-apt-repository ppa:nginx/stable
	wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -

prefix:
	apt-get install python-software-properties
