name 'phpdcd'
maintainer 'David Joos'
maintainer_email 'development@davidjoos.com'
license 'MIT'
description 'Installs/Configures phpdcd'
version '1.1.0'

%w(debian ubuntu redhat centos fedora scientific amazon).each do |os|
  supports os
end

source_url 'https://github.com/djoos-cookbooks/phpdcd'
issues_url 'https://github.com/djoos-cookbooks/phpdcd/issues'

depends 'php'
depends 'git'
depends 'composer'
