.PHONY: install

bash_rc_src := ${PWD}/bash/.bashrc
git_config_src := ${PWD}/git/.gitconfig
git_ignore_src := ${PWD}/git/.gitignore
sublime_text_preferences_src := ${PWD}/sublime-text/Preferences.sublime-settings
sublime_text_py_pdb_snippet_src := ${PWD}/sublime-text/py-pdb.sublime-snippet
vim_rc_src := ${PWD}/vim/.vimrc
zsh_rc_src := ${PWD}/zsh/.zshrc
zsh_env_src := ${PWD}/zsh/.zshenv

bash_rc_dest := ${HOME}/.bashrc
git_config_dest := ${HOME}/.gitconfig
git_ignore_dest := ${HOME}/.gitignore
sublime_text_preferences_dest := ${HOME}/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
sublime_text_py_pdb_snippet_dest := ${HOME}/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/py-pdb.sublime-snippet
vim_rc_dest := ${HOME}/.vimrc
zsh_rc_dest := ${HOME}/.zshrc
zsh_env_dest := ${HOME}/.zshenv


help:
	@echo "Use 'make <target>' by choosing one of the following as <target>:"
	@echo "           install        to install these dot files without backup existing ones"

install:
	ln -fs $(bash_rc_src) $(bash_rc_dest)
	ln -fs $(git_config_src) $(git_config_dest)
	ln -fs $(git_ignore_src) $(git_ignore_dest)
	ln -fs $(sublime_text_preferences_src) $(sublime_text_preferences_dest)
	ln -fs $(sublime_text_py_pdb_snippet_src) $(sublime_text_py_pdb_snippet_dest)
	ln -fs $(vim_rc_src) $(vim_rc_dest)
	ln -fs $(zsh_rc_src) $(zsh_rc_dest)
	ln -fs $(zsh_env_src) $(zsh_env_dest)
