#!/usr/bin/env bash
#how to load a php file
exec {'replacing_right path':
  command => 'sed -i "s/.phpp/.php/g"  /var/www/html/wp-settings.php',
  path_way    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  only_if  => 'test -f /var/www/html/wp-settings.php'
}
