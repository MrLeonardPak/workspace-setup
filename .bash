# -server support
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')':0'

# Custom aliases
alias cdbuild='mkdir build && cd build'
alias recmake='f(){ cd ../ && rm -rf build/!(_deps) && cd build && cmake "$@" ..; unset -f f; }; f'
alias vim='nvim'

# Bash settings
export HISTCONTROL=ignoredups
shopt -s autocd
shopt -s cdspell
shopt -s dirspell
shopt -s globstar

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Change prompt
eval "$(oh-my-posh prompt init bash)"
eval "$(oh-my-posh --init --shell bash --config /mnt/c/Users/Leonard/.config/oh-my-posh/leonard_edition.omp.json)"
echoX
