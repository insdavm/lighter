Lighter
=======

Perl script to auto-adjust Macbook Pro 8,1 screen brightness and keyboard backlight based on the ambient light sensor 

Dependencies: notify-send, IO::Async perl module (can be installed with ```$ cpan IO::Async```)


Usage
=======

* Run it as root (so the script can access ```/sys/class``` and associated directories)  
*or*  
* Have it autostart when KDE/Gnome starts (just run ```$ sudo make install``` in the source directory to install the autostart file).  You might need NOPASSWD in the sudoers file for your user for this to work.

Create file that contains word "locked" in /tmp/.apple_sensor.txt to temporarily disable automatic changing of backlight.
