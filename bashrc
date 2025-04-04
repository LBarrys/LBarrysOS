#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#bash promit color
PS1='\[\033[1;32m\]\u\[\033[0;37m\]@\[\033[1;32m\]\h\[\033[0;37m\]:\W '

#aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias autoremove='pacman -Qdtq && sudo pacman -Rs $(pacman -Qdtq)'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias timeshiftC='sudo timeshift --create'
alias timeshiftR='sudo timeshift --restore'
alias timeshiftD='sudo timeshift --delete'

#fastfetch logo
fastfetch --logo-padding-top 1 --logo-padding-left 1 --logo-padding-right 1 --color green --logo arch_small
