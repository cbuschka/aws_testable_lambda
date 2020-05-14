test:	init
	. ${PWD}/venv/bin/activate && \
	PYTHONPATH=${PWD}:${PWD}/tests python -m unittest discover -p '*_test.py' tests/

init:
	if [ ! -d "${PWD}/venv/" ] || [ ! -z "${FORCE}" ]; then \
		virtualenv venv/; \
		$(MAKE) install_deps; \
	fi

install_deps:
	. ${PWD}/venv/bin/activate && pip install -r ${PWD}/requirements.txt
