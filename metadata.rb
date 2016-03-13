maintainer        "Kuko Armas"
maintainer_email  "kuko@canarytek.com"
license           "Apache 2.0"
description       "Installs and configures FreeRadius"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.0.1"
name              "modularit-radius"
recipe            "modularit-radius", "Installs and configures FreeRadius"

%w{apt yum yum-epel modularit-sambadc}.each do |pkg|
  depends pkg
end

%w{redhat centos}.each do |os|
  supports os
end
