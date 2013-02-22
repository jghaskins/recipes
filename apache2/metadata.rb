maintainer       "Joe Haskins"
maintainer_email "joe@commercialprogression.com"
license          ""
description      "Define apache2 service"
#long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "1.0"

# supports "centos", "~> 5.8", "~> 6"
# supports "redhat", "~> 5.8"
# supports "ubuntu", "~> 10.04", "~> 12.04"

recipe "apache2:define_service",
  " Defines the apache2 service without installing anything" +

