oh-my-posh init pwsh --config $env:USERPROFILE\workspace-setup\configs\leonard_edition.omp.json | Invoke-Expression
Import-Module posh-git
Import-Module -Name Terminal-Icons
# Modules setup
# Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Function F1 { git add }
# Set-Alias ga F1
Function F2 { git commit -m }
# Set-Alias gcm F2
Function F3 { git status -s }
# Set-Alias gs F3
Function F4 { git log --pretty=format:"%C(yellow)%h %ad %C(red)| %C(white)%s%C(auto)%d %C(blue)[%an]" --graph --date=short }
Set-Alias -Name glg -Value F4
Function F5 { git diff }
Set-Alias gd F5
