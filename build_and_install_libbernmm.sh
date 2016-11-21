#!/bin/sh


### get and cd libbernmm directory
DIR=$(cd $(dirname $0) && pwd)
cd $DIR



### download bernmm-1.1
echo '* * * DOWNLOADING bernmm-1.1 from website: '
echo ''

wget http://web.maths.unsw.edu.au/~davidharvey/code/bernmm/bernmm-1.1.tar.gz
tar xfvz bernmm-1.1.tar.gz
rm bernmm-1.1.tar.gz

echo ''
echo ''


### build libbernmm.dylib
echo '* * * BUILDING libbernmm.dylib '
echo ''

g++ -dynamiclib -O2 -DNDEBUG -DUSE_THREADS -DTHREAD_STACK_SIZE=4096 $DIR/bernmm-1.1/bern_modp.cpp $DIR/bernmm-1.1/bern_rat.cpp $DIR/bernmm-1.1/bern_modp_util.cpp -lntl -lgmp -lpthread -o $DIR/libs/libbernmm.dylib


### install libbernmm.dylib
echo '* * * INSTALLING libbernmm.dylib'
echo ''
ln -siv $DIR/libs/libbernmm.dylib /usr/local/lib/libbernmm.dylib


### build ruby-interface
echo '* * * BUILDING ruby_wrapper'
echo ''
cd $DIR/ruby_wrapper
ruby extconf.rb
make clean
make
cd ..



### complete
echo ''
echo '* * * COMPLETE!!'
echo ''
echo 'TRY TEST CODE:'
echo '    cd test_codes'
echo '    ruby test_ber.rb'



