apt-get install -y git autoconf automake libtool g++ gettext make
mkdir ~/src
cd ~/src
git clone git://github.com/mono/mono.git
cd mono
./autogen.sh --prefix=/usr/local
make get-monolite-latest
make
make install