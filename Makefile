#-------------------------------------------------------------------
# @author Dan Gudmundsson <dgud@erlang.org>
# @copyright (C) 2010, Dan Gudmundsson
# @doc  Starts and stops the application
#
# @end
# Created :  9 Dec 2010 by Dan Gudmundsson <dgud@erlang.org>
#-------------------------------------------------------------------

# using rebar (fetch with: git clone https://github.com/basho/rebar)



compile:
	$(MAKE) -C src

recompile: clean
	$(MAKE) compile

clean:
	$(MAKE) -C src $@


.PHONY: compile recompile docs old.release release clean
