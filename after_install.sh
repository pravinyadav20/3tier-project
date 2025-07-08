#!/bin/bash

echo "Linking custom nginx config..."
sudo ln -sf /etc/nginx/sites-available/react-backend /etc/nginx/sites-enabled/react-backend

# Optional: Remove default config if needed
sudo rm -f /etc/nginx/sites-enabled/default

echo "Testing nginx config..."
sudo nginx -t

echo "Reloading nginx..."
sudo systemctl reload nginx
