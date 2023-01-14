$public_key="AAAAB3NzaC1yc2EAAAADAQABAAABAQDk+5+ZCID6rRUS1DM71D7+VMxraBAx03Gh0ihhAssn+eVmpwwedVsEV6meG8YNxykLISc952p9SIQnz/XngicMnrK6B1O8Q6nCX28sbs33/kMFI7jXwr+lcPKJqSAKipKfnOqS2AeqaWW2Lkg3hnkXs5hq10sSYZaVdJLWUTqFkPzN+4fa/p6tRL9jLuBDmh35Fg4JnH0DYC+gCxGVu9NRfecMdFYmqhl6A7GUwrAZWLSlSt8Ucza5mHQysa+pFKEqFe0UuR3urd8TTEnEyr87rSb987Dmf0wwEQTRUp+BEpPFfIqtWARgKZSs5QtVdfOI6k05E20y/hfSp8Ct7+oF"
class ssh_node1 {

   ssh_authorized_key { 'tony@stapp01':

     ensure => present,

    user   => 'tony',

     type   => 'ssh-rsa',

     key    => $public_key,

   }

 }

 class ssh_node2 {

   ssh_authorized_key { 'steve@stapp02':

     ensure => present,

     user   => 'steve',

     type   => 'ssh-rsa',

     key    => $public_key,

   }

 }

 class ssh_node3 {

   ssh_authorized_key { 'banner@stapp03':

     ensure => present,

     user   => 'banner',

     type   => 'ssh-rsa',

     key    => $public_key,

   }

 }

 node stapp01.stratos.xfusioncorp.com {

   include ssh_node1

 }

 node stapp02.stratos.xfusioncorp.com {

   include ssh_node2

 }

 node stapp03.stratos.xfusioncorp.com { 

   include ssh_node3

 }


# puppet parser validate vfstpd.pp

# Then go to agent and run "puppet agent -tv" 
# Note - Make sure you run the above command i.e puppet agent -tv as root user"
# Use "ssh-keygen -t rsa" command to generate new keys and then copy and paste key in public variable
