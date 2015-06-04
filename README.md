# fishgulp
Gulp fix for fish [shell] on Linux.

Sometimes gulp will give me this error:

[will add when it occurs next]


I added this function to config.fish to fix it:

    function fix
      echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf & sudo sysctl -p
    end

You can change `fix` to be whatever you want. This is the function call.

```shell
➜  ~ fix
```
