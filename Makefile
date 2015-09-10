.PHONY: backup install install-dots restore

help:
	@echo "Use 'make <target>' by choosing one of the following as <target>:"
	@echo "           backup         to backup existing dot files"
	@echo "           install        to backup existing dot files and install these ones"
	@echo "           install-dots   to install these dot files without backup existing ones"
	@echo "           restore        to restore backuped dot files if there was a backup before"

backup:
	# 

install: backup install-dots

install-dots:
	#

restore:
	#
