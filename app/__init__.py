from flask import Flask

# from https://stackoverflow.com/a/42791810/1983957
app = Flask(
    __name__,
    static_url_path='',
    static_folder='static',
    template_folder='templates'
)

from app import routes
