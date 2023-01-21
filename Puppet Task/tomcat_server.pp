class tomcat_installer {

    package {'tomcat':

        ensure => installed

    }

    service {'tomcat':

        ensure    => running,

        enable    => true,

    }

}

node  'stapp03.stratos.xfusioncorp.com' {

  include tomcat_installer

}

# puppet parser validate vfstpd.pp

# Then go to agent and run "puppet agent -tv"
