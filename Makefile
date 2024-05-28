compile:
	@echo "Compiling..."
	docker run --rm \
	-v .:/app \
	asn1c && \
	@echo "Compilation done."

debug:
	docker run -it --rm --entrypoint /bin/sh asn1c

build:
	docker build -t asn1c .

.PHONY: compile debug build