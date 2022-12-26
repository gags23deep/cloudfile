class add_content {

   # Update beta.txt under /opt/finance

   file { '/opt/data/news.txt':

     ensure => 'present',

     content => 'Welcome to xFusionCorp Industries!',

     mode => '0744',

   }

 }

 node 'stapp03.stratos.xfusioncorp.com' {

   include add_content

 }


# puppet parser validate vfstpd.pp

# Then go to agent and run "puppet agent -tv"
