
class apache inherits motd{
   package { 'httpd':
             ensure => present,
           }
   file { "/var/www/html/index.html":
           source => "puppet:///modules/apache/index.html",
          notify => service ["httpd"],
       }
    service { "httpd":
    ensure => running,
    require => package ["httpd"],
      }
   $name1 = $name1
   notify {"game is ${name1}":}
 }
