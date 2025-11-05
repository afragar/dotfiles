function shell_status
    # Get the name of the parent process
    set parent_cmd (ps -p (ps -p %self -o ppid=) -o comm=)

    if test "$parent_cmd" = chezmoi
        echo "You are inside the chezmoi subshell. Type 'exit' to leave."
    else if test "$parent_cmd" = login -o "$parent_cmd" = fish -o "$parent_cmd" = bash -o "$parent_cmd" = zsh
        echo "You are at the top-level shell."
    else
        echo "Parent process: $parent_cmd"
        echo "Status unknown — use 'exit' carefully."
    end
end
