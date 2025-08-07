# Makefile for running tests in dsaria project

.PHONY: test test-all

# Default: run all tests
test: test-all

# Run all tests
test-all:
	python3 -m pytest

clean:
	rm -rf dist
	rm -rf dsaria.egg-info

build: clean
	python3 -m build