This is a minimal WebKit based browser.
It's intended use is to display a single web resource non-interactively,
while being highly portable, especially to the arm11 architecture (used for the Raspberry Pi), and supporting Javascript and HTML5 Websockets for dynamic content updates.

# COMPILING
    apt-get install libwebkit-dev
    # OR: yum install webkitgtk-devel
    make

# INSTALLING
No special steps are required for installation. Just execute `browser`.
This program was designed to be started via inittab on boot like this:

    1:2345:respawn:/usr/bin/startx -e /usr/bin/browser http://10.0.0.5/zfs/monitor tty1 </dev/tty1 >/dev/tty1 2>&1

# USAGE
    browser <URL>

This will launch the browser in fullscreen mode and load the resource at `URL`.
`URL` can be anything that WebKit supports, including `file://`-URLs for local webpages and documents.
Omitting `URL` shows the default page, this README.

The following keybindings exist:
  - `F5` for reloading the current page
  - `F11` for toggling fullscreen

These actions are also implemented as signal handlers:
  - `HUP` for reload
  - `USR1` for fullscreen toggle

# Variants

There is a variant that includes the scrollbar in the "feature/scrollbar" branch. Thanks @flottokarotto.
