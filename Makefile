install: install-bash install-git install-emacs

install-bash:
	rm -f ~/.bashrc
	ln -s `pwd`/bash/bashrc ~/.bashrc

install-zsh:
	rm -f ~/.zshrc
	ln -s `pwd`/zsh/zshrc ~/.zshrc

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

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim/vimrc ~/.vimrc
	ln -s `pwd`/vim ~/.vim

install-hosts:
	cat `pwd`/etc/hosts >> /etc/hosts
