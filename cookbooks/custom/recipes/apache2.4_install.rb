#
# Author::  Joe Haskins(<joe@commercialprogression.com>)
#

upgrade = value_for_platform(
  %w{ centos redhat fedora } => {
    "default" => %w{ apr apr-util }
  },
  "default" => %w{ apr apr-util }
)

upgrade.each do |pkg|
  package pkg do
    action :upgrade
  end
end

install = value_for_platform(
  %w{ centos redhat fedora } => {
    "default" => %w{ httpd }
  },
  "default" => %w{ httpd }
)

install.each do |pkg|
  package pkg do
    action :install
  end
end
