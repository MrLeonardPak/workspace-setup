if status is-interactive
  # Custom aliases
  alias cdbuild='mkdir build && cd build'
  function recmake
    cd ../ && find build/* -maxdepth 0 ! -path 'build/_deps' -exec rm -rf {} \; && cd build && cmake $argv ..
  end
  function v
    nvim $argv
  end
  function vim
    nvim $argv
  end

  alias ga='git add'
  alias gc='git commit -m'
  alias gs='git status -s'
  alias gl='git log --pretty=format:"%C(yellow)%h %ad %C(red)| %C(white)%s%C(auto)%d %C(blue)[%an]" --graph --date=short'
  alias gd='git diff'
  
  # Exa
  alias ls="exa -l --no-user --no-filesize --no-permissions --no-time --icons"
  alias ll="exa -l -a --icons"
  alias lt="exa -T --icons"

  # Add local bin
  if not contains $HOME/.local/bin $PATH
    set -a PATH $HOME/.local/bin
  end

  # Fzf.fish
  oh-my-posh init fish --config ~/workspace-setup/configs/leonard_edition.omp.json | source
  fzf_configure_bindings --history=\cr --directory=\cf --variables=\e\cv
end
