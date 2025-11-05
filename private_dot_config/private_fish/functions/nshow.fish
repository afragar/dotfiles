function nshow
    if test (count $argv) -ne 1
        echo "Show navi cheatsheet"
        echo "Usage: nshow <command>"
        return 1
    end

    set cheatfile (navi info cheats-path)/$argv[1].cheat
    tail -n +3 $cheatfile | bat --paging=never --style=plain --file-name=$cheatfile
end
