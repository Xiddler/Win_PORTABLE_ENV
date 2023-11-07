# Filename: passin.PS1
# Date: 2023-11-02

# TOSHIBA $filepath1='/home/donagh/sd64/0_Donaghs_Stuff/1programming/python/Projects/passwds_CLI/pass_in.py'

# $filepath1='C:\Users\don_l\PORTABLE_ENV\dotfiles\scripts\.scripts'


# This program inserts new credentials into Windows version of 11SignUps.txt
$filename = "C:\Users\don_l\Applications\Zim_wiki\MY_ZIM\Computer\11SignUps.txt"

Read-Host "You will be entering data to the file  `r`n $filename on Windows11"

# Get info from user
$url_nick =  Read-host "Enter the url_nick"
$website =  Read-host "Enter the website : "
$email =  Read-host "Enter the email : "
$password =  Read-host "Enter the password : "
$username =  Read-host "Enter the username : "
$date =  Read-host "Enter the date : "
$note =  Read-host "Enter the note : "

   
# Make a json block
$block = @" 
{ 
"url_nick":"$url_nick", 
"website":"$website",          
"email":"$email",          
"password":"$password",          
"username":"$username",          
"date":"$date",          
"note":"$note",          
},
"@

# Append to 11SignUps.txt
Add-Content -Path $filename -Value $block

Read-Host "Finished"

# How do I make PS>passin a permanent command in PowerShell?


