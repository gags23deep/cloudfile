class vfstpd_installer {

    package {'vsftpd':

        ensure => installed

    }

    service {'vsftpd':

        ensure    => running,

        enable    => true,

    }

}

node  'stapp02.stratos.xfusioncorp.com' {

  include vfstpd_installer

}

puppet parser validate vfstpd.pp

Then go to agent and run "puppet agent -tv"
