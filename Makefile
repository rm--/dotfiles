.PHONY: backup install install-dots restore sublime

help:
	@echo "Use 'make <target>' by choosing one of the following as <target>:"
	@echo "           backup         to backup existing dot files"
	@echo "           install        to backup existing dot files and install these ones"
	@echo "           install-dots   to install these dot files without backup existing ones"
	@echo "           restore        to restore backuped dot files if there was a backup before"
	@echo "           sublime        to install sublime-text related files"

backup:
	tar cPf ~/dots_backup.tar ~/.gitignore ~/.gitconfig ~/.bashrc ~/.vimrc ~/.zshrc

install: backup install-dots

install-dots:
	# create config/dots dir on new machine?
	# cp files to new dir
	#
	# restructure repo dirs
	# cp content of repo dots dir

restore:
	tar xPf ~/dots_backup.tar ~/

sublime:
	# cp user config
	# cp snippets
