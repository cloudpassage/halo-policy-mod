#CloudPassage Halo Policy Modifier 

Version: 1.0  
Author: Andrew Hay - andrew@cloudpassage.com

This tool was designed to help customers quickly modify CloudPassage Halo File Integrity Monitoring (FIM) and Configuration Security Monitoring (CSM) policy files. A common difference in Halo template policies and customer installations are directory paths. Simply export your policy from within the Halo Portal, run the tool, and then upload back into the Portal to customize directory paths.


##Requirements and Dependencies
* Halo Pro-eval or Professional account
* Ruby 1.8 or above 

##List of Files
* hpm.rb 

##Usage
    ./hpm.rb
     __           __                          __ __                                    __ __   ___ __             
    |  |--.---.-.|  |.-----.    .-----.-----.|  |__|.----.--.--.    .--------.-----.--|  |__|.'  _|__|.-----.----.
    |     |  _  ||  ||  _  |    |  _  |  _  ||  |  ||  __|  |  |    |        |  _  |  _  |  ||   _|  ||  -__|   _|
    |__|__|___._||__||_____|    |   __|_____||__|__||____|___  |    |__|__|__|_____|_____|__||__| |__||_____|__|  
                                |__|                     |_____|                                                  

    Created by: Andrew Hay / @andrewsmhay 
    http://github.com/halopolicymod

    Please enter the file name to convert: <strong>wordpress-for-debian-ubuntu-linux.json</strong>

    Original directory: <strong>/var/www/</strong>

    New directory: <strong>/usr/share/drupal/</strong>

    Would you like to create a new file with specific [n]ame or a new file with the version [i]ncrstrongented? [n/i]: <strong>i</strong>

    New filename will be: wordpress-for-debian-ubuntu-linux-v1.json
    

