.PHONY: build publish


PYTHON?=python

build:
	# only wheel, because sdist leak local path 
	# https://github.com/pypa/setuptools/issues/1185
	$(PYTHON) -m build -w

publish:
	$(PYTHON) -m twine upload --repository testpypi dist/*
