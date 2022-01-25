alias reload!='. ~/.zshrc'

alias pf='f(){ ssh -R${1}:localhost:${1} ${2} }; f'
