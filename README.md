# fishgulp
Gulp fix for fish [shell] on Linux.

Sometimes gulp will give me this error:

[will add when it occurs next]


I added this function to config.fish to fix it:

    function {insert_name}
      echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf & sudo sysctl -p
    end

Change {insert_name} to be whatever you want. I called my `fix`. This is the function call.

```shell
➜  ~ fix
```
