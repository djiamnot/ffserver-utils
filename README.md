Simple ffserver example
=======================

This is a simple ffserver example. What is needed to run it:

* ffmpeg
* lunch (https://launchpad.net/~sat-metalab/+archive/metalab)

The lunch script ensures that that the ffserver/ffmpeg pair runs and will relaunch either software in case of a crash.
The ffserver software creates a flash movie stream.
The ffmpeg creates the input for the ffserver. In current configuration it reads the first available camera and default
audio input. 

* put ffserver.conf in /etc
* Edit lunchrc to suit your needs:
  * Change the IP global variable to point to the server on which ffmpeg will run
  * Maybe change your ffmpeg settings.

Usage:
./launchit.sh

Notes:
Yes, I wish ffserver could do ogg/thora but apparently it cannot. So we are stuck with flash.
