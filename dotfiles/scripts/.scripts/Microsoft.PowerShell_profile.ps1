# This is a symlink from C:\Users\don_l\Win_PORTABLE_ENV\dotfiles\scripts\.scripts\Microsoft.PowerShell_profile.ps1
# Symlink made 2023-11-08 

oh-my-posh init pwsh | Invoke-Expression

Set-Alias cx Clear-Host

# cd .. etc
function upp1 { cd .. }
set-item -path alias:u1 -value upp1

# GIT
# git status
function gitstatus { git status }
set-item -path alias:gss -value gitstatus

# git add -all
function gitadd { git add . }
set-item -path alias:gaa -value gitadd

# git list all Win repos
function gitlist { powershell.exe C:\Users\don_l\Win_PORTABLE_ENV\dotfiles\scripts\.scripts\list_Win_git_repos.PS1 }
set-item -path alias:g_list -value gitlist

# 11SIGNUPS
# passout (for 11SignUps)
function ppassout { powershell.exe C:\Users\don_l\Win_PORTABLE_ENV\dotfiles\scripts\.scripts\passout.PS1 }
set-item -path alias:passout -value ppassout 

# passin (for 11SignUps)
function ppassin { powershell.exe C:\Users\don_l\Win_PORTABLE_ENV\dotfiles\scripts\.scripts\passin.PS1 }
set-item -path alias:passin -value ppassin
