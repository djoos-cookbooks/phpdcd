name 'phpdcd'
maintainer 'Escape Studios'
maintainer_email 'dev@escapestudios.com'
license 'MIT'
description 'Installs/Configures phpdcd'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.0'

%w( debian ubuntu redhat centos fedora scientific amazon ).each do |os|
  supports os
end

depends 'php'
depends 'composer'

recipe 'phpdcd', 'Installs phpdcd.'
recipe 'phpdcd::composer', 'Installs phpdcd using composer.'
recipe 'phpdcd::phar', 'Installs phpdcd using phar.'
