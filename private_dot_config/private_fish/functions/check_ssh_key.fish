function check_ssh_key
    set keys (ssh-add -l 2>&1)
    if string match -q "*The agent has no identities.*" $keys
        set_color yellow
        echo "🔐 No SSH keys loaded into agent."
        set_color normal
    else if string match -q "*error*" $keys
        set_color red
        echo "❌ Error checking SSH agent:"
        echo $keys
        set_color normal
    else
        set_color green
        echo "✅ SSH key(s) loaded:"
        set_color cyan
        ssh-add -l
        set_color normal
    end
end
