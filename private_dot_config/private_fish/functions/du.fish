function du --description "run with --all to include hidden files and directories"
  eza --long --total-size --bytes --no-permissions --no-user --classify=always --color-scale=all --time-style=long-iso --icons=always --group-directories-first --git $argv
end
