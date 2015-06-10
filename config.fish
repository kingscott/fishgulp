function {insert_name}
  echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf & sudo sysctl -p
end
