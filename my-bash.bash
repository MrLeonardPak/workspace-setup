# Custom aliases
alias cdbuild='mkdir build && cd build'
alias recmake='f(){ cd ../ && rm -rf build/!(_deps) && cd build && cmake "$@" ..; unset -f f; }; f'

# Bash settings
export HISTCONTROL=ignoredups
shopt -s autocd
shopt -s cdspell
shopt -s dirspell
shopt -s globstar

# Change prompt
eval "$(oh-my-posh prompt init bash)"
eval "$(oh-my-posh --init --shell bash --config $HOME/workspace-setup/leonard_edition.omp.json)"
echo
