# Setup for /bin/ls and /bin/grep to support color, the alias is in /etc/bashrc.
if [ -f "/etc/dircolors" ] ; then
	eval $(dircolors -b /etc/dircolors)
fi

if [ -f "$HOME/.dircolors" ] ; then
	eval $(dircolors -b $HOME/.dircolors)
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Colors definition
RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
YELLOW="$(tput setaf 3)"
BLUE="$(tput setaf 4)"
MAGENTA="$(tput setaf 5)"
CYAN="$(tput setaf 6)"
WHITE="$(tput setaf 7)"
GRAY="$(tput setaf 8)"
BOLD="$(tput bold)"
UNDERLINE="$(tput sgr 0 1)"
INVERT="$(tput sgr 1 0)"
NOCOLOR="$(tput sgr0)"
export RED GREEN YELLOW BLUE MAGENTA CYAN WHITE GRAY BOLD UNDERLINE INVERT NOCOLOR

# less Wrapper function for colors in man pages
LESS_TERMCAP_mb=$(tput setaf 1)                              # Start blinking
LESS_TERMCAP_md=$(tput bold; tput setaf 1)                   # Start bold mode
LESS_TERMCAP_us=$(tput smul; tput bold)                      # Start underlining
LESS_TERMCAP_so=$(tput bold; tput setaf 7; tput setab 1)     # Start standout mode
LESS_TERMCAP_mr=$(tput rev)                                  # Start reverse mode
LESS_TERMCAP_mh=$(tput dim)                                  # Start half bright mode
LESS_TERMCAP_me=$(tput sgr0)                                 # End all mode like so, us, mb, md, and mr
LESS_TERMCAP_se=$(tput rmso; tput sgr0)                      # End standout mode
LESS_TERMCAP_ue=$(tput rmul; tput sgr0)                      # End underlining
LESS_TERMCAP_ZN=$(tput ssubm)                                # Enter subscript mode
LESS_TERMCAP_ZV=$(tput rsubm)                                # End subscript mode
LESS_TERMCAP_ZO=$(tput ssupm)                                # Enter superscript mode
LESS_TERMCAP_ZW=$(tput rsupm)                                # End superscript mode
LESS_TERMCAP_ZH=$(tput sitm)                                 # Enter italic mode
LESS_TERMCAP_ZR=$(tput ritm)                                 # End italic mode
export LESS_TERMCAP_{mb,md,us,so,mr,mh,me,se,ue,ZN,ZV,ZO,ZW,ZH,ZR}
