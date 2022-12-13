#!/usr/bin/env bash
#how to load a php file
exec {'replacing_right path':
  command => 'sed -i "s/.phpp/.php/g"  /var/www/html/wp-settings.php',
  pathway    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  onlyif  => 'test -f /var/www/html/wp-settings.php'
}
