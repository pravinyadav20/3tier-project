#!/bin/bash

echo "Linking custom nginx config..."
sudo ln -sf /etc/nginx/sites-available/react-backend /etc/nginx/sites-enabled/react-backend

# Optional: Remove default config if needed
# sudo rm -f /etc/nginx/sites-enabled/default
      - echo "Running Docker containers..."
      - docker run -d --name frontend-container -p 81:80 frontend-image
      - docker run -d --name backend-container -p 4000:4000 backend-image
      - echo "Docker containers started successfully."


echo "Testing nginx config..."
sudo nginx -t

echo "Reloading nginx..."
sudo systemctl reload nginx
