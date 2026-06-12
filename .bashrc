
# Deaktiviert die Meta-Key-Bindung für "q" und "l"
bind -r "\eq"
bind -r "\el"

test -s ~/.alias && . ~/.alias || true


# fzf need to be installed
fnd() {
        local file
        file=$(fzf --preview 'bat --style=numbers  --color=always --line-range :500 {} 2>/dev/null || head -n 500 {}' \
               --preview-window=right:60%:nowrap)
                
        # Open vim with <enter> in selected file. <ESC> for abort.
        [ -n "$file" ] && ${EDITOR:-vim} "$file"
      }

