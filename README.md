# fishgulp
Gulp fix for fish [shell] on Linux.

Sometimes gulp will give me this error:

    events.js:85
          throw er; // Unhandled 'error' event
                ^
    Error: listen EADDRINUSE
        at exports._errnoException (util.js:746:11)
        at Server._listen2 (net.js:1156:14)
        at listen (net.js:1182:10)
        at Server.listen (net.js:1267:5)
        at EventEmitter.app.listen (/home/scottking/harmony/designer/node_modules/express/lib/application.js:595:24)
        at Object.<anonymous> (/home/scottking/harmony/designer/server.js:19:5)
        at Module._compile (module.js:460:26)
        at Object.Module._extensions..js (module.js:478:10)
        at Module.load (module.js:355:32)
        at Function.Module._load (module.js:310:12)


I added this function to config.fish to fix it:

    function {insert_name}
      echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf & sudo sysctl -p
    end

Change {insert_name} to be whatever you want. I called my `fix`. This is the function call.

```shell
➜  ~ fix
fs.inotify.max_user_watches = 524288
fs.inotify.max_user_watches = 524288
fs.inotify.max_user_watches = 524288
fs.inotify.max_user_watches = 524288
```


Just a test
