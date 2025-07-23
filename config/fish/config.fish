if status is-interactive
    # Commands to run in interactive sessions can go here
end

set TERM "xterm"

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
            set git_dirty "✗" 
        else
            set git_dirty "✔"
        end

        set git_info (set_color green)"($git_branch $git_dirty)"
    end

    echo -n "$host: $cwd$git_info "
end

## Useful aliases

alias vi 'nvim'
alias ls 'eza -al --color=always --group-directories-first --icons' # preferred listing
alias lsz 'eza -al --color=always --total-size --group-directories-first --icons' # include file size
alias la 'eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll 'eza -l --color=always --group-directories-first --icons'  # long format
alias lt 'eza -aT --color=always --group-directories-first --icons' # tree listing
alias l. 'eza -ald --color=always --group-directories-first --icons .*' # show only dotfiles

# Replace some more things with better alternatives
alias cat 'bat --style header --style snip --style changes --style header'
if not test -x /usr/bin/yay; and test -x /usr/bin/paru
    alias yay 'paru'
end

