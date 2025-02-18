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
def testpage():
  return render_template('./test.html')
```

For this to work you need to create a html file in the templates folder called test.html & add a link to the navbar in homepage.html with
```
    <nav>
        <a href="/">Home</a>
        <a href="/about">About</a>
        <a href="/test">Test</a>
    </nav>
```
