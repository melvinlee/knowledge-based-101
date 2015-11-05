# Mono

## How to install from Source

###Centos

	yum install bison gettext glib2 freetype fontconfig libpng libpng-devel libX11 libX11-devel glib2-devel libgdi* libexif glibc-devel urw-fonts java unzip gcc gcc-c++ automake autoconf libtool make bzip2 wget -y

	cd /usr/local/src 
	wget http://origin-download.mono-project.com/sources/mono/mono-4.2.1.91.tar.bz2
	tar jxf mono-4.2.1.91.tar.bz2
	cd mono-4.2.1
	./configure --prefix=/opt/mono
	make && make install

	export PATH=$PATH:/opt/mono/bin
	export PKG_CONFIG_PATH=/opt/mono/lib/pkgconfig


Always get latest version from http://origin-download.mono-project.com/sources/mono


## Building Mono from source

### Debian/Unbuntu


Git checkout mono source from github and build

	apt-get install -y git autoconf automake libtool g++ gettext make
	mkdir ~/src
	cd ~/src
	git clone git://github.com/mono/mono.git
	cd mono
	./autogen.sh --prefix=/usr/local
	make get-monolite-latest
	make
	make install
	
or execute bash script

	bash <(curl -s https://raw.githubusercontent.com/melvinlee/knowledge-based-101/master/Mono/compile-mono.sh)
		
Note: if you are using Ubuntu 15.04 or later, you also need to install the libtool-bin package.

	apt-get install libtool-bin


To verify mono is install successfully. Run

	mono -v
		

Source: 

[Hosting Nancy with Nginx on Ubuntu](https://github.com/NancyFx/Nancy/wiki/Hosting-Nancy-with-Nginx-on-Ubuntu)

[Compiling Mono on Linux](http://www.mono-project.com/docs/compiling-mono/linux/)

[Mono Basics](http://www.mono-project.com/docs/getting-started/mono-basics/)
