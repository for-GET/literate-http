.PHONY: all test test/ast custom.mk

all:
	@$(MAKE) -f .coffee.mk/coffee.mk $@
	echo "module.exports=$$(api-pegjs-source 'core/for-get/literate-http' 'litHTTP')" > lib/parse.js
	echo "module.exports=$$(api-pegjs-source 'core/for-get/literate-http-curl' 'litHTTP')" > lib/parseCurl.js
	echo "module.exports=$$(api-pegjs-source 'core/for-get/literate-http-apib' 'litHTTP')" > lib/parseApib.js

test: test/ast

test/ast:
	for format in http lithttp apib curl curl-trace; do \
		echo "Testing $${format}..." && \
		(cat README.$${format}.md | bin/to-ast.coffee $${format} && echo -ne "\n") > test/README.$${format}.json && \
		[[ -f test/expected.README.$${format}.json ]] && diff test/README.$${format}.json test/expected.README.$${format}.json || diff test/README.$${format}.json README.json && \
		:; \
	done

custom.mk:
	@:
