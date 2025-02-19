# Variables
APP_NAME = app.py
VENV = venv
PYTHON = $(VENV)/bin/python
PIP = $(VENV)/bin/pip

setup:
    python3 -m venv $(VENV)
	. $(VENV)/bin/activate && $(PIP) install --upgrade pip
	. $(VENV)/bin/activate && $(PIP) install -r requirements.txt

run:
	. $(VENV)/bin/activate && FLASK_APP=$(APP_NAME) FLASK_ENV=development flask run --host=0.0.0.0 --port=5000

# Clean up the environment
clean:
	rm -rf $(VENV) __pycache__ *.pyc *.pyo *.pyd flaskr.sqlite
