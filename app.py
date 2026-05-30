from flask import Flask
import os

app = Flask(__name__)

@app.get('/')
def hello():
    return {
        "status": "success",
        "message": "Ale:)",
        "team": "Proyecto Final SO2",
        "container_id": os.uname()[1]
    }

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
