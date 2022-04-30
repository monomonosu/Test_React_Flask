from flask import render_template
from app import app


@app.route('/')
def index():
    return render_template('index.html', token='Hello Flask+React')


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)
