
# WINDOWS VERSION

# This python script is used to entering credentials to 11SignUps.py. The zsh command alias is passin. See .zsh_aliases. 
# (Note added 2022-03-29)

# Filepath:   C:\Users\don_l\PORTABLE_ENV\dotfiles\scripts\.scripts\pass_in.py




filename = r'C:\Users\don_l\Applications\Zim_wiki\MY_ZIM\Computer\11SignUps.txt'


print(f'This will save credentials to {filename}')

url_nick = input(r'What is the url-nick? ' )
# print(f'You entered {url_nick} for the url-nick.')

url = input(r'What is the URL? ' )
# print(f'You entered {url} for the URL.')

email = input(r'What is the email? ' )
# print(f'You entered {email} for the email.')

username = input(r'What is the username? ' )
# print(f'You entered {username} for the username.')

password = input(r'What is the password? ' )
# print(f'You entered {password} for the password.')

date = input(r'What is the date? ' )
# print(f'You entered {date} for the date.')

note = input(r'What is the note? ' )
# print(f'You entered {note} for the note.')

print('\n')

happy = input(r'Ok to send this to 11SignUps.txt?\ny or n [Enter] : ')

myjason = '''{
'url_nick':"''' + url_nick + '''",
'website':"''' + url + '''",
'email':"''' + email + '''",
'password':"''' + password  + '''",
'username':"''' + username + '''",
'date':"''' + date + '''",
'note':"''' + note + '''",
},
'''

if happy == 'y':
    with open(filename, 'a') as f:    # append data to end of 11SignUps.txt
        f.write(myjason)
else:
    print('There seems to be a problem. Goodbye.')


