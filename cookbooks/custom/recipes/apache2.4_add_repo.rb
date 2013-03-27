#
# Author::  Joe Haskins(<joe@commercialprogression.com>)
# Cookbook Name:: install_apache2-4
#
remote_file "/etc/yum.repos.d/apache_2-4.repo" do
  source "https://s3.amazonaws.com/apache2.4/repo/apache_2-4.repo"
  notifies :run, resources(:execute => "yum_makecache"), :immediately
end

execute "yum_makecache" do
  command "yum makecache"
  action :nothing
end
