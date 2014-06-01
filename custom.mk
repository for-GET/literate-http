.PHONY: all

all:
	@$(MAKE) -f .coffee.mk/coffee.mk $@
	echo "module.exports=$$(api-pegjs-source 'core/for-get/literate-http' 'litHTTP')" > lib/parse.js
	echo "module.exports=$$(api-pegjs-source 'core/for-get/literate-http-curl' 'litHTTP')" > lib/parseCurl.js
	echo "module.exports=$$(api-pegjs-source 'core/for-get/literate-http-apib' 'litHTTP')" > lib/parseApib.js
