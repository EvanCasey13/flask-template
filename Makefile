# Variables
APP_NAME = flask_app
VENV = venv
PYTHON = $(VENV)/bin/python
PIP = $(VENV)/bin/pip

# Create a virtual environment and install dependencies
setup:
	python3 -m venv $(VENV)
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt

# Run the Flask app
run:
	FLASK_APP=flaskr FLASK_ENV=development $(PYTHON) -m flask run --host=0.0.0.0 --port=5000

# Format the code
format:
	$(PYTHON) -m black .

# Run tests
test:
	$(PYTHON) -m pytest

# Deploy using GitHub Actions
deploy:
	git push origin main

# Clean up the environment
clean:
	rm -rf $(VENV) __pycache__ *.pyc *.pyo *.pyd flaskr.sqlite
