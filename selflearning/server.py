# server.py
from flask import Flask, request, jsonify, send_from_directory
import requests
from dotenv import load_dotenv
import os

load_dotenv()

app = Flask(__name__)

@app.route('/')
def index():
    return send_from_directory('static', 'index.html')

@app.route('/directions', methods=['GET'])
def get_directions():
    api_key = os.getenv('GOOGLE_MAPS_API_KEY')
    origin = request.args.get('origin')
    destination = request.args.get('destination')
    url = f'https://maps.googleapis.com/maps/api/directions/json?origin={origin}&destination={destination}&key={api_key}'
    response = requests.get(url)
    return jsonify(response.json())

@app.route('/apikey', methods=['GET'])
def get_apikey():
    api_key = os.getenv('GOOGLE_MAPS_API_KEY')
    return jsonify({"apiKey": api_key})

if __name__ == '__main__':
    app.run(debug=True)
