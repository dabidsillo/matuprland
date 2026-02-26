if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-history-substring-search
	)

source $ZSH/oh-my-zsh.sh
source /usr/share/nvm/init-nvm.sh

alias install="sudo pacman -S --needed"
alias remove="sudo pacman -Rns"
alias update="sudo pacman -Syu"
alias search="pacman -Ss"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
