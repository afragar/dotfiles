function nedit
    if test (count $argv) -ne 1
        echo "Edit navi cheatsheet"
        echo "Usage: nedit <command>"
        return 1
    end

    set cheatfile (navi info cheats-path)/$argv[1].cheat
    nvim $cheatfile
    chezmoi add $cheatfile
end
