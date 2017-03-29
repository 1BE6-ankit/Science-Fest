# Science-Fest
This repo contains the app for the three quizes conducted during Science-Fest at Budhanilkantha School.

## Setting up the hardware environment
The computers can be connected through WI-FI but increase in traffic may cause the program to behave abnormally. So the best way to set
up the LAN is by connecting all the required computers to a Router. There must be admin computer from which scores and questions are 
sent.

## Setting up the software environment and running the app
The server should have PHP installed before getting the app up and running. If not already installed, follow these steps to installed PHP in your system:
- Linux:  
  1. Download [XAMPP](https://www.apachefriends.org/index.html)
  1. Locate the installation directory and in the terminal type: **./xampp-linux---.run** . A Graphical interface pops up, which will guide you.
  1. After the installation has completed run XAMPP by going to the installation folder (usually _/opt/lampp_). Then  **./manager-linux-x64.run**.
  1. Start all the services. So with this all the tools are set up.  

With all the tools set up, now you can start using the app by following these steps:
  1. By default the php project folders or the _localhost_ for php is **lampp/htdocs**, so download the _Science Fest_ project folder from github and paste into the **htdocs** folder. Or, from the terminal open the htdocs folder and clone the repository: _**git clone https://github.com/1BE6-ankit/Science-Fest.git**_.  
  1. Now, you need to set up MySQL databases for the quizes. To set up the database:
      1. Open __localhost/phpmyadmin__ from your browser.
      1. Click New, and then name the database **math-round1**
      1. Now with math-round1 selected click __Import > Choose File__. Browse to Science-Fest/math-quiz/database. Select the math-round1 database and click Go. (This math-round1 file is an example file for database of Math-Quiz. Each quiz have different database structure)
      1. After you have successfully imported the database, you need to alter a few lines of code inside __math-quiz/php/mysql_login.php__. Open the file and alter the following line by giving the name of the database, in this case, math-round1
         ```
            $db_database = 'math-round1';
         ```
       1. With this you would have set up a database for Math-Quiz. You can modify the database as per your requriement. And remember that, each quiz has its own database file and the process for setting up the database for other quiz is same as above.
  1. With the database ready, you are ready to test the app:
      1. In the following steps you are making a sinple computer act both as client and the server. So open two windows of your browser and snap them so you can see both the windows and see the program working.
      1. In one window open localhost/Science-Fest/math-quiz/admin.php. Enter the required number of users and type the corresponding name (!! The player name should start from alphabets with no special characters). After typing the names you should see an UI for admin control panel. 
      1. Now in the other window type: localhost/Science-Fest/math-quiz/ . Press continue.
      1. From the admin control panel, Load a question and send it. Now you can see the client window loading the question. 
 
       
         
