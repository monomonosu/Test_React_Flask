from flask import Flask

app = Flask(__name__, static_folder='../front/dist/static', template_folder='../front/dist')
