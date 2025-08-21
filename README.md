## Config

These are my config files for my current setup

## Dependencies

- C and various dependencies related to the compilation of dwm
- python + pywal*
- autostart.sh
- dmenu (application launcher)
- nitrogen (wallpaper)
- node (required for coc-vim)
- Maple Mono (font)

* If you wanted to customize with your own wallpaper

## Autostart.sh

I used to have more here but now it's just for my wallpaper, place script
inside of `~/.dwm` and ensure that you run `chmod +x ~/.dwm/autostart.sh`

```sh
#!/bin/sh

nitrogen --restore
```

## Additional Tools / Considerations

I use nmtui to connect to wifi, this is pretty major for me as I run my setup
on a laptop. Other things such as notification daemons and custom keyboard
bindings must be setup by patching dwm itself so please go read dwm docs if you
want to use some of these configs.

## TODO

- [ ] Create a setup script
