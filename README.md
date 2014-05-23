OoklaSpeedtest
==============

Docker container for a push-button Ookla Speedtest Mini server

* [Ookla Speedtest Mini](http://www.speedtest.net/mini.php)

Maintainer: Chris Collins \<collins.christopher@gmail.com\>

Updated: 2014-05-23

##Prerequisite##

First, you need to go to the [Ookal Speedtest website](http://www.speedtest.net/mini.php), register, and download the "mini.zip" file containing the test software.

Place the mini.zip file in the directory next to this README.md, and proceed to build the image.

##Building and Running##

This is a [Docker](http://docker.io) container image.  You need to have Docker installed to build and run the container.

To build the image, change directories into the root of this repository, and run:

`docker build -t speedtest .`  <-- note the period on the end

Once it finishes building, you can run the container with:

`docker run -d -p 8080:80 speedtest`

Then, open your browser and navigate to [http://localhost:8080](http://localhost:8080) to view your new speedtest site!.

##Making the Site Publicly Available##

To make your site available to the public on port 80 of your host system, use the following `docker run` command instead of the one above:

`docker run -d -p 80:80 speedtest`

The site will now be availble as a normal website if you browse to the domain name or IP of your host system.  (Make sure your host system's firewall is open on port 80 accordingly.)

##Known Issues##

Tracked on Github: [https://github.com/DockerDemos/OoklaSpeedtest/issues](https://github.com/DockerDemos/OoklaSpeedtest/issues)

##Copyright Information##

The Ookla Speedtest Mini software is owned by Ookla.

This Docker container code is:

Copyright (C) 2014 Chris Collins

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.
