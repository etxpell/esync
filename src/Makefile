
include modules.mk


APP_MODULES = $(MODULES)

BEAM = $(APP_MODULES:%=$(EBIN)/%.beam)


EBIN    = ../ebin
INCLUDE = ../inc

ERL_CRASH_DUMP = /dev/null

VSN = $(shell date +"%Y-%m-%d %H:%M:%S")

# ============================================================================

$(EBIN)/%.beam: %.erl | $(EBIN)
	erlc -W +debug_info -I $(INCLUDE) -o $(@D) $<

# ============================================================================

all: beam

beam: $(BEAM) modules.mk $(EBIN)

$(EBIN):
	mkdir $@

clean:
	rm -f depend.mk $(BEAM)


.SECONDARY: $(GENERATED)
.PHONY: all app beam gen hrl clean realclean

# ============================================================================

depend: depend.mk

# Generate dependencies makefile.
depend.mk: depend.sed $(MODULES:%=%.erl) Makefile
	(for f in $(MODULES); do \
	     (echo $$f; cat $$f.erl) | sed -f $<; \
	 done) \
	> $@

-include depend.mk

.PHONY: depend
