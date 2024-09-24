#!/bin/bash
echo "<Location "/drupal">
    Require all denied
</Location>" >> /etc/apache2/apache2.conf
