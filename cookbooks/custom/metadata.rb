maintainer       "Joe Haskins"
maintainer_email "joe@commercialprogression.com"
license          "none"
description      "custom chef recipes"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

recipe "custom::apache2_service",
  "Creates apache2 service without installing anything."
recipe "custom::apache2.4_add_repo",
  "Add apache 2.4 repo."
