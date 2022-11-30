# how to make a .sh file executible

# see what files have what permissions
ls -al

# how to know if a file has executable permisions
-rwxr-xr-x 

# how that works
# -rwxr=(owner) -xr=(users) -x=(public)
# read(r), write (w), execute (or search for directories) (x)
# execute/search only  if  the file is a directory or already has execute permission for some user (X),
# set user or group ID on execution (s), restricted  deletion  flag or sticky bit (t).  
# Instead of one or more of these letters you can specify exactly one of the letters ugo: the permissions granted
# to  the  user  who  owns the file (u), 
# the permissions granted to other users who are members of the file's  group (g),
# and  the  permissions granted  to  users  that are in neither of the two preceding categories (o).

# how to make a file executable
chmod +x script.sh
-------------------------------------------------------------------------------------------------------------------
# Bash script to make ssh to a machine easier
# make ececutable
chmod +x login.sh

# run script file
./login.sh

#!/usr/bin/bash
echo "Hello and welcome to the easier login"
echo "Please enter the name of the user"
read user
command=' ssh {$user}@bandit.labs.overwire.org -p 2220
echo" thank you"
sleep 2
eval $command
-------------------------------------------------------------------------------------------------------------------
