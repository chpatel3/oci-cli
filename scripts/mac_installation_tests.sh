# XCode Python version
source $TRAVIS_BUILD_DIR/scripts/install/install.sh --accept-all-defaults
# Homebrew Python version
python3 --version
pip3 install -U pip
pip3 install -U virtualenv
rm -rf /Users/travis/lib/oracle-cli
brew update python
virtualenv -p python3 cli-3
source cli-3/bin/activate
source $TRAVIS_BUILD_DIR/scripts/install/install.sh --accept-all-defaults
deactivate
# Official Python version
rm -rf /Users/travis/lib/oracle-cli
curl -OL http://www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz
tar xzvf Python-3.6.5.tgz
cd Python-3.6.5
./configure --prefix=/usr/local --enable-shared --with-ssl
make
make install
cd ..
source $TRAVIS_BUILD_DIR/scripts/install/install.sh --accept-all-defaults