install: install-bash install-git install-emacs

install-bash:
	rm -f ~/.bashrc
	ln -s `pwd`/bash/bashrc ~/.bashrc

install-git:
	rm -f ~/.gitconfig
	ln -s `pwd`/git/gitconfig ~/.gitconfig

install-emacs:
	rm -rf ~/.emacs.d
	rm -f ~/.emacs
	ln -s `pwd`/emacs/emacs ~/.emacs
	ln -s `pwd`/emacs/emacs.d ~/.emacs.d

install-rvm:
	bash `pwd`/ruby/install-rvm
