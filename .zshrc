# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/kreimben/.oh-my-zsh"
export XDG_RUNTIME_DIR='/run/user/1000'

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    sudo
    git

    ls
    zsh-autocomplete
    zsh-hangul
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $HOME/.oh-my-zsh/custom/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias bios="sudo systemctl reboot --firmware-setup"
alias w="curl wttr.in/anseong"
alias doom="~/.emacs.d/bin/doom"
alias win="sudo grub-reboot 1 && sudo reboot now"
alias vultr="ssh kreimben@141.164.55.41"
