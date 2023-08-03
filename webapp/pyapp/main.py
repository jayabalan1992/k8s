import flask, random
import os
app = flask.Flask(__name__)


username = os.getenv('USERNAME')
@app.route('/')
def hello():
  return f"Hello {username}"

@app.route('/otp')
def randomnum():
  return str(random.randint(1111, 9999))

if __name__ == "__main__":
    app.run(host='0.0.0.0')
