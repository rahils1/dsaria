# Makefile for running tests in dsaria project

.PHONY: test test-all

# Default: run all tests
test: test-all

# Run all tests
test-all:
	python3 -m pytest

# Clean up directory
clean:
	rm -rf dist
	rm -rf dsaria.egg-info

# Build
build: clean
	python3 -m build

# Upload to TestPyPI
upload-test: build
	python3 -m twine upload --repository testpypi dist/*

# Upload to PyPI
upload-main: build
	python3 -m twine upload dist/*

# Upload to both TestPyPI and PyPI
upload-all: build
	python3 -m twine upload --repository testpypi dist/*
	python3 -m twine upload dist/*