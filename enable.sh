#!/bin/sh
sudo systemctl enable certrenew.service certrenew.timer certrenew.path
sudo systemctl start certrenew.service certrenew.timer certrenew.target certrenew.path
