class nginx_installer {

    package {'nginx':

        ensure => installed

    }

    service {'nginx':

        ensure    => running,

        enable    => true,

    }

}

node  'stapp03.stratos.xfusioncorp.com' {

  include vfstpd_installer

}

# puppet parser validate vfstpd.pp

# Then go to agent and run "puppet agent -tv"
