.PHONY: compile rel test typecheck

REBAR=./rebar3

compile:
	$(REBAR) compile

clean:
	$(REBAR) clean

test:
	$(REBAR) as test do eunit,ct

typecheck:
	$(REBAR) dialyzer

doc:
	$(REBAR) edoc
