#!/bin/bash

#Simple Bash Application to manage Apache2 Application states

# Adding Application to the autostart
sudo update-rc.d apache2 defaults 

echo "Select 1, 2, 3 or 4 "
echo "1 - Start Application" 
echo "2 - Stop Application"
echo "3 - Restart Application" 
echo "4 - Check Application Status"

read number 

#Application menu created using case instruction
case "$number" in 
    #Start Apache2 service
    1) sudo service apache2 start
        ;;

    #Stop Apache2 service
    2) sudo service apache2 stop
        ;;

    #Restart Apache2 service    
    3) sudo service apache2 restart
        ;;

    #Check Apache2 status    
    4) sudo service apache2 status
        ;;

    *) echo "$number is not a correct number"
        ;;
esac 
