#
# Author::  Joe Haskins(<joe@commercialprogression.com>)
# Cookbook Name:: install_apache2.4
# Recipe:: default
#

case node['platform']
when 'centos', 'redhat', 'fedora'
  # Configure repo
  yum_repository "apache_2-4" do
    name "Apache_2-4"
    url "https://s3.amazonaws.com/apache2.4/repo/CentOS/6/x86_64"
    action :add
  end
end

pkgs = value_for_platform(
  %w{ centos redhat fedora } => {
    "default" => %w{ httpd }
  },
  "default" => %w{ httpd }
)

pkgs.each do |pkg|
  package pkg do
    action :upgrade
  end
end
