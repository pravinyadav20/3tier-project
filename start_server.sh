#!/bin/bash
pm2 start index.js
pm2 startup
pm2 save
sudo systemctl restart nginx
