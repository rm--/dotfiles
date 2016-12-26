.PHONY: backup install install-dots restore

bash_rc_src := bash/.bashrc
git_config_src := git/.gitconfig
git_ignore_src := git/.gitignore
sublime_text_preferences_src := sublime-text/Preferences.sublime-settings
sublime_text_py_pdb_snippet_src := sublime-text/py-pdb.sublime-snippet
vim_rc_src := vim/.vimrc
zsh_rc_src := zsh/.zshrc
zsh_env_src := zsh/.zshenv

bash_rc_dest := ~/.bashrc
git_config_dest := ~/.gitconfig
git_ignore_dest := ~/.gitignore
sublime_text_preferences_dest := ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
sublime_text_py_pdb_snippet_dest := ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/py-pdb.sublime-snippet
vim_rc_dest := ~/.vimrc
zsh_rc_dest := ~/.zshrc
zsh_env_dest := ~/zshenv

backup_dest := ~/dots_backup.tar


help:
	@echo "Use 'make <target>' by choosing one of the following as <target>:"
	@echo "           backup         to backup existing dot files"
	@echo "           install        to backup existing dot files and install these ones"
	@echo "           install-dots   to install these dot files without backup existing ones"
	@echo "           restore        to restore backuped dot files if there was a backup before"
	@echo "           sublime        to install sublime-text related files"

backup:
	tar cPf $(backup_dest) \
		$(bash_rc_dest) \
		$(git_config_dest) $(git_ignore_dest) \
		$(sublime_text_preferences_dest) $(sublime_text_py-pdb-snippet_dest) \
		$(vim_rc_dest) \
		$(zsh_rc_dest) $(zsh_env_dest)

install: backup install-dots

install-dots:
	ln -fn $(bash_rc_src) $(bash_rc_dest)
	ln -fn $(git_config_src) $(git_config_dest)
	ln -fn $(git_ignore_src) $(git_ignore_dest)
	ln -fn $(sublime_text_preferences_src) $(sublime_text_preferences_dest)
	ln -fn $(sublime_text_py_pdb_snippet_src) $(sublime_text_py_pdb_snippet_dest)
	ln -fn $(vim_rc_src) $(vim_rc_dest)
	ln -fn $(zsh_rc_src) $(zsh_rc_dest)
	ln -fn $(zsh_env_src) $(zsh_env_dest)

restore:
	tar xPf ~/dots_backup.tar ~/
