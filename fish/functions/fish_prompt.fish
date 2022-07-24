function fish_prompt
    # This is a simple prompt. It looks like
    # alfa@nobby /path/to/dir $
    # with the path shortened and colored
    # and a "#" instead of a "$" when run as root.
    set -l symbol '$ '
    if fish_is_root_user
        set symbol '# '
        set -q fish_color_cwd_root
        and set color $fish_color_cwd_root
    end

    set_color green --bold
    echo -n $USER@$hostname

    set_color normal
    echo -n :

    set_color blue
    echo -n (pwd | sed "s:^$HOME:~:")
    set_color normal

    echo -n $symbol
end
