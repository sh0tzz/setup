export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
	git
	zsh-autosuggestions
	copypath
	copyfile 
	dirhistory
# syntax highlighting must be last
	zsh-syntax-highlighting
)
source $HOME/.oh-my-zsh/oh-my-zsh.sh
alias ls="exa"
alias cat="batcat"
eval "$(starship init zsh)"
