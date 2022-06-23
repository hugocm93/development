# Luke's config for the Zoomer Shell

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# vi mode
bindkey -v
export KEYTIMEOUT=1

cfiles ()
{
    $HOME/programs/cfiles/cfiles .
}

 bindkey -s '^o' 'cfiles\n'

 # Edit line in vim with ctrl-e:
 autoload edit-command-line; zle -N edit-command-line
 bindkey '^e' edit-command-line

 # Load aliases and shortcuts if existent.
 [ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
 [ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

 # Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

[[ -e ~/.profile ]] && emulate sh -c 'source ~/.bashrc_src'
