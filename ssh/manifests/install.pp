

class ssh::install {
      $pack = $::osfamily?
          {
         "RedHat" => "openssh",
         "Debain" => "ssh",
         }
         package {"openssh":
                 ensure => present,
               }
  }
