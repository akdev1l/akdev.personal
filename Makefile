CPPFLAGS=-P
CPP=cpp
CPPDEFINES=
SUBTARGETS=$(shell find * -maxdepth 0 -type d -print)

all: 
	@echo 'Please use the configure script'

config: $(SUBTARGETS)
	
.PHONY: $(SUBTARGETS)
$(SUBTARGETS): 
	@$(MAKE) -C $@
