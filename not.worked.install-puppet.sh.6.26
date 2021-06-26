#!/bin/sh -x
#!/bin/bash -x -e
echo "Updating package info..."
sudo yum update -y
sudo yum install -y epel-release
sudo yum -y install git vim
sudo yum install -y gcc openssl-devel bzip2-devel libffi-devel xz-devel jq ruby-devel make rubygems gcc
echo "Adding puppet repo"
sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
sudo yum install puppet -y


echo "Upgrading packages..."


curl -sSL https://get.rvm.io | bash -s stable --ruby=2.4
curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
curl -sSL https://rvm.io/pkuczynski.asc | gpg2 --import -
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile
#~/.rbenv/bin/rbenv init
#curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash
#gem install ruby-stdlib

