function ll --wraps=ls
  eza --long --bytes --no-permissions --no-user --classify=always --color-scale=all --time-style=long-iso --icons=always --group-directories-first --git $argv
end
