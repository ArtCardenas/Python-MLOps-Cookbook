from flask import Flask, request, jsonify,render_template
from flask.logging import create_logger
import logging


import mlib

app = Flask(__name__)
LOG = create_logger(app)
LOG.setLevel(logging.INFO)

@app.route("/")
def home():
    html = f"<h3>Predict the Height From Weight of MLB Players V2</h3>"
    return html.format(format)

@app.route("/predict", methods=['POST'])
def predict():
    """Predicts the Height of MLB Players JSON V2"""
    
    json_payload = request.json
    LOG.info(f"JSON payload: {json_payload}")
    prediction = mlib.predict(json_payload['Weight'])
    return jsonify({'prediction': prediction})

@app.route("/predicthtml", methods=['POST','GET'])
def predicthtml():
    """Predicts the Height of MLB Players HTML"""

    json_payload = request.json
    LOG.info(f"JSON payload: {json_payload}")
    prediction = mlib.predict(json_payload['Weight'])
    return render_template("output.html",output=prediction)



if __name__ == "__main__":
    app.run(host='0.0.0.0', port=8080, debug=True)
