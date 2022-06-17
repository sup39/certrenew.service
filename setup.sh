#!/bin/sh
baseURL=https://raw.githubusercontent.com/sup39/certrenew.service/master
dst=/etc/systemd/system
if [ ! -w "$dst" ]; then
  echo "$dst is not writable. Download to /tmp instead"
  dst=/tmp
fi
wget -P "$dst" "$baseURL/certrenew.service" "$baseURL/certrenew.timer" "$baseURL/certrenew.target" "$baseURL/certrenew.path"
cat <<EOF
Next step:
(1) edit $dst/certrenew.service
(2) $ sudo systemctl enable certrenew.service certrenew.timer certrenew.path
(3) $ sudo systemctl start certrenew.service certrenew.timer certrenew.target certrenew.path
EOF
