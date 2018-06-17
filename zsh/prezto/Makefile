CPPFLAGS=-P
CPP=cpp
CPPDEFINES=
TEMPLATE=zpreztorc.in
TARGETFILE=$(HOME)/.zpreztorc
SUBTARGETS=$(shell find * -maxdepth 0 -type d -print)

all: prezto $(SUBTARGETS)
	$(CPP) $(CPPFLAGS) $(CPPDEFINES) $(TEMPLATE) > $(TARGETFILE)

prezto:
	git clone --recursive https://github.com/sorin-ionescu/prezto.git ${HOME}/.zprezto
	for rcfile in ${HOME}/.zprezto/runcoms/^README.md(.N); do \
		ln -s "$rcfile" "${HOME}/.${rcfile:t}" ; \
	done

$(SUBTARGETS):
	$(MAKE) -C $@
