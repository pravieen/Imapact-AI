from flask import Flask, request, jsonify
import pickle

app = Flask(__name__)

# Load the trained model
with open('model.pkl', 'rb') as file:
    model = pickle.load(file)

@app.route('/predict', methods=['POST'])
def predict():
    # Get the parameters from the request
    crop_type = request.json['crop_type']
    plant_height = float(request.json['plant_height'])
    leaf_size = float(request.json['leaf_size'])
    leaf_color = request.json['leaf_color']
    pest_type = request.json['pest_type']
    disease_type = request.json['disease_type']

    # Make a prediction using the model
    prediction = model.predict([[crop_type, plant_height, leaf_size, leaf_color, pest_type, disease_type]])

    # Return the result as a JSON object
    return jsonify({'prediction': prediction.tolist()})
