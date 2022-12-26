
class mysql_database {
    package { 'mariadb-server':
        ensure => installed,
    }
    service { 'mariadb':
        ensure => running,
        enable => true,
    }
    mysql::db { 'kodekloud_db6':
    user     => 'kodekloud_sam',
    password => 'BruCStnMT5',
    host     => 'localhost',
    grant    => ['ALL'],
  }
}
 

node 'stdb01.stratos.xfusioncorp.com' {

  include mysql_database

}
