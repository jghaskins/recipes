#
# Author::  Joe Haskins(<joe@commercialprogression.com>)
# Cookbook Name:: install_apache2-4
#

# Configure repo
yum_repository "apache_2-4" do
  name "Apache_2-4"
  url "https://s3.amazonaws.com/apache2.4/repo/CentOS/6/x86_64"
  action :add
end

