sudo cp Stepik_154_1.9/init.sh /home/box/
sudo cp -R Stepik_154_1.9/web/ /home/box/
#    ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo ln -fs /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/
#    rm /etc/nginx/sites-enabled/default
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
