oh-my-posh init pwsh --config $env:USERPROFILE\workspace-setup\configs\leonard_edition.omp.yaml | Invoke-Expression
Import-Module posh-git
Import-Module -Name Terminal-Icons
# PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }
# PSFzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'
Set-PSReadLineKeyHandler -Chord 'Ctrl+Alt+s' -ScriptBlock { Invoke-FuzzyGitStatus }
# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Function F3 { git status -s }
Set-Alias gs F3
Function F4 { git log --pretty=format:"%C(yellow)%h %ad %C(red)| %C(white)%s%C(auto)%d %C(blue)[%an]" --graph --date=short }
Set-Alias -Name glg -Value F4
