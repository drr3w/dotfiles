if status is-interactive
    # Commands to run in interactive sessions can go here
end

#function fish_prompt
#    echo (set_color green)(hostname -s)(set_color normal) (prompt_pwd)' ' 
#end

function fish_prompt
    # Host shortname
    set host (set_color grey)(hostname -s)
    # Current directory
    set cwd (set_color blue)(prompt_pwd)

    # Git status
    set git_info ""

    if git rev-parse --is-inside-work-tree >/dev/null 2>&1
        set git_branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)

        if test (git status --porcelain 2>/dev/null | wc -l) -gt 0
            set git_dirty "❌" 
        else
            set git_dirty "✅"
        end

        set git_info (set_color green)"($git_branch $git_dirty)"
    end

    echo -n "$host: $cwd$git_info "
end

