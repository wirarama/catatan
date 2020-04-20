sudo apt-get install apache2

sudo a2enmod cgid
cd /etc/apache2/mods-enabled
sudo ln -s /etc/apache2/mods-available/cgi.load

sudo nano /etc/apache2/conf-enabled/serve-cgi-bin.conf
<Directory "usr/lib/cgi-bin">
             AddHandler cgi-script .py          #paling bawah
</Directory>

sudo nano /usr/lib/cgi-bin/pytest.py

#!/usr/bin/python

import cgi
import cgitb
cgitb.enable()

print 'Content-type: text/html\n\n'
print '<h1>Python Script Test</h1>'

sudo chmod +x /usr/lib/cgi-bin/pytest.py

sudo adduser www-data dialout
sudo adduser www-data video

sudo service apache2 restart
