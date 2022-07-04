# i3
This repository handle all i3 window manager staff

## Power Button lock screen
i3wm can't handle alone the Power Button change behaviour so it's needed to remove the Power Button from systemd

   - `vi /etc/systemd/logind.conf`

 ```bash
 [Login]
 HandlePowerKey=ignore
 IdleAction=ignore
 ```

   - `vi .config/i3/config`

 ```bash
 bindsym XF86PowerOff exec "$HOME/.config/i3/i3lock-multimonitor/lock -i $pictures/noplacelikelocalhost.png"
 ```