# Program to insert credentials into 11SignUps.txt
# Aliased to PS> passout
# This filepath: C:\Users\don_l\PORTABLE_ENV\dotfiles\scripts\.scripts\passout.PS1
# See zim-wiki (Windows) 11SignUps:passin passout:passout PS1

$filename="C:\Users\don_l\Applications\Zim_wiki\MY_ZIM\Computer\11SignUps.txt"
echo $filename

$mystr = Read-host "Enter search string: "
echo "You are searching for $mystr"

Select-String -Path $filename  -Pattern $mystr -Context 1,4

