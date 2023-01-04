$public_key= "AAAAB3NzaC1yc2EAAAADAQABAAABAQDItzBH+uDqyR1xzm/IQJUE6u+9vn868hPN5tsyo0SUmdtWowfPaFy4h4yR6GXFgVkxmDR4EZp0QnW7vkW9PxhC+E//DE5AejM3Brlv+8fJ7DkBt/UXBn4TefwGSqD7UkjCEXaN7Kjrco+9LibjwRBXs0DiwtndFQgRly9uRRPcgf0xQbgOAN5Ur7u2uPTVEQ3vzeQlr7oqkBPONCyVM1Y9/1zn2b9ZseC3JJhNHdnBZYFytFZx6DGBzonkh4mZuib+0UeNJ3qh69EZ+idsVqvlfc5xUjE0mQwyl/nsnuRO2MjW8FwwPWDlvjPrD/j35YHMpZ9+9NYWCK/uUFEeIlSj"

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
# Note - Make sure you run the above as root user"
