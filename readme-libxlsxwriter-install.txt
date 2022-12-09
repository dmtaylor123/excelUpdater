https://libxlsxwriter.github.io/getting_started.html

sudo apt-get install -y zlib1g-dev

git clone https://github.com/jmcnamara/libxlsxwriter.git

cd libxlsxwriter
make

This will create a static and dynamic library in the local ./lib directory

sudo make install
The files are installed to /usr/local by default but this can be overridden by using the PREFIX environmental variable:

make install PREFIX=/usr/third_party
A staging directory can be set with DESTDIR which is prepended to all install paths. This is a an occasionally useful feature for packaging:

make install PREFIX=/usr/third_party DESTDIR=./staging/
This would build and link the code with /usr/third_party as the installation location but actually install to ./staging/usr/third_party.
