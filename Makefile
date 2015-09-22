PACKAGE=prov_interop_provtranslator

.PHONY: help
help:
	@echo "clean-pyc - remove Python file artifacts"
	@echo "clean-docs - remove Sphinx artifacts"
	@echo "clean - remove all auto-generated artifacts"
	@echo "apidocs - generate Sphinx HTML API documentation"

.PHONY: clean
clean: clean-pyc clean-docs

.PHONY: clean-pyc
clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -rf {} +
	find . -name '*~' -exec rm -f {} +

.PHONY: clean-docs
clean-docs:
	rm -f apidocs/modules.rst
	rm -f apidocs/$(PACKAGE).*
	rm -rf apidocs/_build

.PHONY: apidocs
apidocs: clean-docs
	sphinx-apidoc -o apidocs/ $(PACKAGE)
	$(MAKE) -C apidocs clean
	$(MAKE) -C apidocs html
