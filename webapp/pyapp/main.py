import flask, random
import os
app = flask.Flask(__name__)


username = os.getenv('USERNAME')
@app.route('/')
def hello():
  return flask.render_template('index.html')

@app.route('/otp')
def randomnum():
  return str(random.randint(1111, 9999))

@app.route('/details')
def userdetail():
  return f"Hello {username}"

if __name__ == "__main__":
    app.run(host='0.0.0.0')
