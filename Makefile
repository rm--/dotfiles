.PHONY: install

git_config_src := ${PWD}/git/.gitconfig
vim_rc_src := ${PWD}/vim/.vimrc
zsh_rc_src := ${PWD}/zsh/.zshrc
zsh_env_src := ${PWD}/zsh/.zshenv

git_config_dest := ${HOME}/.gitconfig
vim_rc_dest := ${HOME}/.vimrc
zsh_rc_dest := ${HOME}/.zshrc
zsh_env_dest := ${HOME}/.zshenv


help:
	@echo "Use 'make <target>' by choosing one of the following as <target>:"
	@echo "           install        to install these dot files without backup existing ones"

install:
	ln -fs $(git_config_src) $(git_config_dest)
	ln -fs $(vim_rc_src) $(vim_rc_dest)
	ln -fs $(zsh_rc_src) $(zsh_rc_dest)
	ln -fs $(zsh_env_src) $(zsh_env_dest)
