class add_user{

user { 'adding user anita':

     name => 'anita',
      uid => '1443',
   }
  
}

 node 'stapp02.stratos.xfusioncorp.com' {

   include add_user

 }
