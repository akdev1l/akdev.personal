CPPFLAGS=-P
CPP=cpp
CPPDEFINES=-DPREFIX='`'
TEMPLATE=tmux.conf.in
TARGETFILE=$(HOME)/.tmux.conf

.PHONY: themepack

all: themepack
	$(CPP) $(CPPFLAGS) $(CPPDEFINES) $(TEMPLATE) > $(TARGETFILE)
themepack:
	git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack
