// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SoilAndAirAssessmentPage extends StatefulWidget {
  @override
  _SoilAndAirAssessmentPageState createState() =>
      _SoilAndAirAssessmentPageState();
}

class _SoilAndAirAssessmentPageState extends State<SoilAndAirAssessmentPage> {
  final TextEditingController _soilPhController = TextEditingController();
  final TextEditingController _soilMoistureController = TextEditingController();
  final TextEditingController _airTemperatureController =
      TextEditingController();
  final TextEditingController _airHumidityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Crop Recomendation',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Soil & Weather Parameters:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _soilPhController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Soil pH',
                hintText: 'PH of the soil',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _soilMoistureController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Soil Moisture',
                hintText: 'Moisture content of the soil',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            //SizedBox(height: 32.0),
            SizedBox(height: 16.0),
            TextField(
              controller: _airTemperatureController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Rainfall',
                hintText: 'Value of Rainfall',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _airTemperatureController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Temperature',
                hintText: 'Value of Temperature',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _airTemperatureController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Nitrogen',
                hintText: 'Value of Nitrogen',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _airTemperatureController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Potassium',
                hintText: 'Value of Potassium',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _airHumidityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Air Humidity',
                hintText: 'Humidity of the air',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _airHumidityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Phosphorus',
                hintText: 'Value of Phosphorus',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 32.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // TODO: Perform soil and air assessment logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                ),
                child: Text(
                  'Crop Recommendations',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
