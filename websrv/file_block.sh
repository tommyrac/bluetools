#!/bin/bash
echo "<FilesMatch "(*.php)">
    Require all denied
</FilesMatch>" >> /etc/apache2/apache2.conf
