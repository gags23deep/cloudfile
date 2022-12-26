class { 'ntp':

  servers => [ 'server 2.cn.pool.ntp.org iburst' ],                                               

}    

 

class ntpconfig {

  include ntp

}  
 

node 'stapp03.stratos.xfusioncorp.com' {

  include ntpconfig

}
# Note install on puppet module " puppet module install puppetlabs-ntp" on jump host 
# as root user if run it as thor user will get error when run agent  command
