include lib/main.mk

PUSH_GHPAGES_BRANCHES := false

lib/main.mk:
ifneq (,$(shell git submodule status lib 2>/dev/null))
	git submodule sync
	git submodule update --init
else
	git clone --depth 10 -b master https://github.com/ekr/i-d-template.git lib
endif

