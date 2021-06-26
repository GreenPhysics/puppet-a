#!/bin/sh -x
#!/bin/bash -x -e
echo "Updating package info..."
sudo yum update -y
sudo yum -y install git
echo "Adding puppet repo"
sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
sudo yum install puppet -y


echo "Upgrading packages..."
sudo yum  install language-pack-en puppet-agent -y 
sudo gem install puppet librarian-puppet
