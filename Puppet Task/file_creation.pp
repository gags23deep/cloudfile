class createfile {

  file { '/opt/sysops/media.txt':
  ensure => '/opt/sysops/media.txt',
  target => '/opt/sysops/media.txt',
}  

}

node  'stapp03.stratos.xfusioncorp.com' {
  include creatfile
}

puppet parser validate vfstpd.pp

Then go to agent and run "puppet agent -tv"
SDFD