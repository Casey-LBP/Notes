1. Search for Files Recursively To Find an Expression
This command will list all filenames containing the string nltk:

$ find . -type f -exec grep -l "nltk" {} \; 
-------------------------------------------------------------------------------------------------------
2. Print the Elapsed Time of Code Execution
This script is useful when you want to track the code execution’s time:

#!/bin/bash

start_time=$(date +%s)

# your code here

end_time=$(date +%s)

echo "Time elapsed: $(($end_time - $start_time)) seconds"

3. Search and Replace Strings in Files
This command will replace strings equal to localhost:8000 with localhost:8080 in all files:

$ find . -type f -exec grep -l "localhost:8000" {} \; | xargs sed -i 's/localhost:8000/localhost:8080/g'
-----------------------------------------------------------------------------------------------------------
4. Delete Specific Files
This command deletes all empty files ending with .log:

$ find . -type f -name "*.log" -exec rm {} \;

To delete all files older than 25 days, run this command:

$ find . -type f -mtime +25 -exec rm {} \;
--------------------------------------------------------------------------------------------------------------
5. Execute Command on Each File if a Condition Is Met
This script loops through all files in the current directory and checks if the filename starts with a letter. 
If the condition is met, it executes an echo command in this example:

for file in *; do
    if [[ $file =~ ^[a-zA-Z] ]]; then
        # execute command on the file
        echo $file
    fi
done
--------------------------------------------------------------------------------------------------------------------
6. Download Files From a Remote Server
Use this command to download a file from a server and save it locally:

$ scp username@server:path/to/file destination_path
------------------------------------------------------------------------------------------------------------------------
7. Upload Files to a Remote Server
Copy a local directory to a remote server:

$ scp -r /local/dir username@server:/remote/dir
This command uploads a local file to a server under a new filename:

$ scp file.txt username@server:/remote/dir/newfilename.txt
-----------------------------------------------------------------------------------------------------------------------------
8. Copy Files Between Two Remote Servers

$ scp user1@server1:/dir1/file.txt user2@server2:/dir2
----------------------------------------------------------------------------------------------------------------------------------
9. Pass an Argument to a Script
If you want to pass a command-line argument to a script, use this syntax in the script:

$ echo "The first argument is: $1"

Execution:

$ ./myscript.sh myargument

If you need a second argument, use $2, and so on.
-----------------------------------------------------------------------------------------------------------------------------------
10. Assign a Variable to a Command Result
You can use command substitution to make a variable equal to the output of another command. 
For example, the code below sends an email to the currently logged on user retrieved by the logname command:

$ recipient=`logname`
$ echo "Email text" |  mail -s "this is the subject" "$recipient@domain.com"
----------------------------------------------------------
11. grep

When we need to find a file but we don't remember its exact 
location or the path, grep will help you to solve this problem.
We can use the grep command to help finding the file based on given 
keywords.

$ grep user /etc/passwd

grep stands for globally search for regular expression and print out.
------------------------------------------------------------
12. locate

The locate - a.k.a. find - command is meant to find a file within the Linux OS. 
If you don't know the name of a certain file or you aren't sure where the file 
is saved and stored, the locate command comes in handy.
  
$locate -i *red*house**city*

The stated command will locate an file with the a file name containing 
"Red", "House" and "City". A note on the input: the use of "-i" tells 
the system to search for a file unspecific of capitalization 
(Linux functions in lower case).
The use of the asterisk "*" signifies searching for a wildcard.A wildcard tells the system to pull any and all files containing the search criteria.
By specifying -i with wildcards, the locate CLI command will pull back all files containing your search criteria effectively
casting the widest search net the system will allow.
------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
# 1. redo last command but as root
sudo !!
----------------------------------------------------------------------------------------------------------------------
# 2. open an editor to run a command
ctrl+x+e
----------------------------------------------------------------------------------------------------------------------
# 3. create a super fast ram disk
mkdir -p /mnt/ram
mount -t tmpfs tmpfs /mnt/ram -o size=8192M
----------------------------------------------------------------------------------------------------------------------
# 4. don't add command to history (note the leading space)
 ls -l
----------------------------------------------------------------------------------------------------------------------
# 5. fix a really long command that you messed up
fc
----------------------------------------------------------------------------------------------------------------------
# 6. tunnel with ssh (local port 3337 -> remote host's 127.0.0.1 on port 6379)
ssh -L 3337:127.0.0.1:6379 root@emkc.org -N
---------------------------------------------------------------------------------------------------------------------
# 7. quickly create folders
mkdir -p folder/{sub1,sub2}/{sub1,sub2,sub3}
-----------------------------------------------------------------------------------------------------------------------
# 8. intercept stdout and log to file
cat file | tee -a log | cat > /dev/null
----------------------------------------------------------------------------------------------------------------------
# bonus: exit terminal but leave all processes running
disown -a && exit
