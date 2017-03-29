# Science-Fest
This repo contains the app for the three quizes conducted during Science-Fest at Budhanilkantha School.

## Setting up the hardware environment
The computers can be connected through WI-FI but increase in traffic may cause the program to behave abnormally. So the best way to set
up the LAN is by connecting all the required computers to a Router. There must be admin computer from which scores and questions are 
sent.

## Setting up the software environment
The server should have PHP installed before getting the app up and running. If not already installed, follow these steps to installed PHP in your system:
- Linux:  
  1. Download [XAMPP](https://www.apachefriends.org/index.html)
  1. Locate the installation directory and in the terminal type: **./xampp-linux---.run** . A Graphical interface pops up, which will guide you.
  1. After the installation has completed run XAMPP by going to the installation folder (usually _/opt/lampp_). Then  **./manager-linux-x64.run**.
  1. Start all the services. So with this all the tools are set up.  

With all the tools set up, now you can start using the app by following these steps:
  1. By default the php project folders or the _localhost_ for php is **lampp/htdocs**, so download the _Science Fest_ project folder from github and paste into the **htdocs** folder. Or, from the terminal open the htdocs folder and clone the repository: _**git clone https://github.com/1BE6-ankit/Science-Fest.git**_.  
  1. Now, you need to set up MySQL databases for the quizes. To set up the database:
      1. adsf
