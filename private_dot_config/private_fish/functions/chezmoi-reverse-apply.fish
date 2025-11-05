function chezmoi-reverse-apply
    # Get list of files that differ (destination vs source):
    set modified (chezmoi diff --json | jq -r '.[].targetPath')

    if test (count $modified) -eq 0
        echo "No modified managed files."
        return 0
    end

    echo "Capturing modifications into source state:"
    for f in $modified
        echo "  $f"
        chezmoi re-add -- "${HOME}/$f"
    end
end

