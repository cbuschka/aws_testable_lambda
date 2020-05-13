test:	init
	. ${PWD}/venv/bin/activate && PYTHONPATH=${PWD} python -m unittest discover -t ${PWD} -s ${PWD} -p '*_test.py'	

init:
	if [ ! -d "${PWD}/venv/" ] || [ ! -z "${FORCE}" ]; then \
		. ${PWD}/venv/bin/activate && pip install -r ${PWD}/requirements.txt; \
	fi
