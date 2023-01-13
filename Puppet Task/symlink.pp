class symlink {

  # First create a symlink to /var/www/html

  file { '/opt/data':

    ensure => 'link',

    target => '/var/www/html',

  }

   

  file { '/opt/data/blog.txt':

    ensure => 'present',

  }

}

node 'stapp02.stratos.xfusioncorp.com'{

  include symlink

}
