# Variables
APP_NAME = app.py
VENV = venv
PYTHON = $(VENV)/bin/python
PIP = $(VENV)/bin/pip

# Create a virtual environment and install dependencies
setup:
	python3 -m venv $(VENV)
	source $(VENV)/bin/activate && $(PIP) install --upgrade pip
	source $(VENV)/bin/activate && $(PIP) install -r requirements.txt

# Run the Flask app
run:
	source $(VENV)/bin/activate && FLASK_APP=$(APP_NAME) FLASK_ENV=development flask run --host=0.0.0.0 --port=5000

# Format the code
format:
	source $(VENV)/bin/activate && $(PYTHON) -m black .

# Run tests
test:
	source $(VENV)/bin/activate && $(PYTHON) -m pytest

# Deploy using GitHub Actions
deploy:
	git push origin main

# Clean up the environment
clean:
	rm -rf $(VENV) __pycache__ *.pyc *.pyo *.pyd flaskr.sqlite
