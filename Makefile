PREFIX=/usr

all:
	@echo "Run 'make test' to run unit tests"
	@echo "Run 'make install' to install python-espeak for user $(USER)"
	@echo "Run 'make global-install' as root to install python-espeak for all users"
	@echo "Run 'make uninstall' to uninstall the package"

install:
	python setup.py install --user

global-install:
	python setup.py install

uninstall:
	pip uninstall python-espeak

test:
	python -m unittest discover -s tests/
