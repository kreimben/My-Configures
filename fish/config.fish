if status is-interactive
# Commands to run in interactive sessions can go here
end

alias bios="sudo systemctl reboot --firmware-setup"
alias w="curl wttr.in/anseong"
alias win="sudo grub-reboot 1 && sudo reboot now"
alias vultr="ssh root@149.28.209.214"
alias lh="ls -hal"

export GPG_TTY=$(tty)

export WINEARCH=win32
export WINEPREFIX=/home/kreimben/.wine
