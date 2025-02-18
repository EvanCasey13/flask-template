# flask-template
# How to run this application

## Create a virtual environment
```
python -m venv venv
```

## Activate the virtual environment 
```
source venv/bin/activate
```

## Install flask
```
pip install flask
```

## Run the flask application
```
flask --app flaskr run --debug
```

# Flask How to

# To add a new route or page
Go to __init__.py and add this code to create a new route for the application with /test that renders test.html
```
@app.route('/test')
def aboutpage():
  return render_template('./test.html')
```
