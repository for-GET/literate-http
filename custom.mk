.PHONY: all

all:
	@$(MAKE) -f .coffee.mk/coffee.mk $@
	echo "module.exports=$$(api-pegjs-source 'core/for-get/literate-http' 'litHTTP')" > lib/parse.js
