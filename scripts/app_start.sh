#!/bin/bash

# Change to the project directory
cd /home/ec2-user/server/src

# Start the application with PM2
pm2 start npm --name "reactapp" -- start

# Configure PM2 to start on system boot
pm2 startup

# Save the PM2 process list
pm2 save

# Restart all PM2 processes (including the application)
pm2 restart all
