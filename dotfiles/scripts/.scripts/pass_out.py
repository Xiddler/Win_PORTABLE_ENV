"""
Started: 2023-11-02

This program searches for a string in 11SignUps.txt

>>> import re
>>> pattern  = re.compile(r'\bhello\b', re.I)
>>> mystring = 'good morning! hello helloworld'
>>> bool(pattern.search(mystring))
"""
import sys
import re

if not sys.warnoptions:
    import warnings
    warnings.simplefilter("default")

# python.exe C:\Users\don_l\AppData\Local\Programs\Python\Python311\python.exe
# Filepath C:\Users\don_l\PORTABLE_ENV\dotfiles\scripts\.scripts\passout.py

filename = r'C:\Users\don_l\Applications\Zim_wiki\MY_ZIM\Computer\11SignUps.txt'

mystr = input("Insert search string: ")

with open(filename, 'r',  encoding='utf-8') as f:
    g = f.read()
    # print(type(g), len(g))
    """
    if mystr in g:
        print(mystr, "good")
    else:
        print("Something's wrong")

    """
    # pattern  = re.compile(r'\bhello\b', re.I)
    # pat  = re.compile(mystr, re.I)
    pat = re.compile(mystr, re.MULTILINE)
    matches = [m.groups() for m in re.finditer(mystr, g, re.VERBOSE)]
    #NOTE can be sorter with matches = re.findall(pattern, text, re.MULTILINE)
    for m in matches:
        # print('Name: %s\nSequence:%s' % (m[0], m[1]))
        print(m)

    print(bool(pat.search(g))) # True
    res1 = re.findall(pat, g)
    res2 = re.search(pat, g)
    print(res1)
    print(res2)


print("END")

