# Makefile for ProtonDB-Tags module

define HELPBODY
Available commands:

	make help       - display the development targets
	make init       - install the python dependencies

endef

export HELPBODY
help:
	@echo "$$HELPBODY"

init:
	pip install -r dev_requirements.txt
