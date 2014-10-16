#!/usr/bin/env bash

block="<VirtualHost *:80>
	ServerName $1
	DocumentRoot $2/
 	DirectoryIndex index.php
	
	<Directory $2/>
            Options Indexes FollowSymLinks
            AllowOverride All
            Require all granted
        </Directory>

	LogLevel debug
	ErrorLog /var/log/apache2/$1-error.log

</VirtualHost>"

echo "$block" > "/etc/apache2/sites-available/$1.conf"
a2ensite $1
service apache2 reload
