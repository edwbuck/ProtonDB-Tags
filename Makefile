# Makefile for ProtonDB-Tags module

define HELPBODY
Available commands:

	make help       - display the development targets
	make init       - install the python dependencies
	make test       - test and report test coverage
	make lint       - static code analysis
        make build      - run a pre-commit build

endef

export HELPBODY
help:
	@echo "$$HELPBODY"

init:
	pip install -r dev_requirements.txt

COVOPTS=--cov-config .coveragerc --cov=protondb_tags

ifeq ($(NOCOV), 1)
	COVOPTS =
endif

test:
	rm -f .coverage protondb_tags/*.pyc tests/*.pyc
	PYTHONHASHSEED=0 pytest --tb=short $(COVOPTS) tests

lint:
	pylint -r n -f colorized protondb_tags || true

build: lint test
	
