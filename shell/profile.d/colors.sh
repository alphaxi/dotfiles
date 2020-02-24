# Setup for /bin/ls and /bin/grep to support color, the alias is in /etc/bashrc.
if [ -f "/etc/dircolors" ] ; then
	eval $(dircolors -b /etc/dircolors)
fi

if [ -f "$HOME/.dircolors" ] ; then
	eval $(dircolors -b $HOME/.dircolors)
fi

alias ls='ls --color=auto'
alias grep='grep --colors=auto'


# less Wrapper function for colors in man pages
export LESS_TERMCAP_mb=$(tput setaf 1)                              # Start blinking
export LESS_TERMCAP_md=$(tput bold; tput setaf 1)                   # Start bold mode
export LESS_TERMCAP_us=$(tput smul; tput bold)                      # Start underlining
export LESS_TERMCAP_so=$(tput bold; tput setaf 7; tput setab 1)     # Start standout mode
export LESS_TERMCAP_mr=$(tput rev)                                  # Start reverse mode
export LESS_TERMCAP_mh=$(tput dim)                                  # Start half bright mode
export LESS_TERMCAP_me=$(tput sgr0)                                 # End all mode like so, us, mb, md, and mr
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)                      # End standout mode
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)                      # End underlining
export LESS_TERMCAP_ZN=$(tput ssubm)                                # Enter subscript mode
export LESS_TERMCAP_ZV=$(tput rsubm)                                # End subscript mode
export LESS_TERMCAP_ZO=$(tput ssupm)                                # Enter superscript mode
export LESS_TERMCAP_ZW=$(tput rsupm)                                # End superscript mode
