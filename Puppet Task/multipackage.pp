class multi_package_node {

    package {'net-tools':

        ensure => installed

    }

    package {'unzip':

        ensure => installed

    }

}

node  'stapp03.stratos.xfusioncorp.com' {

  include multi_package_node

}


# puppet parser validate vfstpd.pp

# Then go to agent and run "puppet agent -tv"
