// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CropHealthAssessmentPage extends StatefulWidget {
  @override
  _CropHealthAssessmentPageState createState() =>
      _CropHealthAssessmentPageState();
}

class _CropHealthAssessmentPageState extends State<CropHealthAssessmentPage> {
  final TextEditingController _cropTypeController = TextEditingController();
  final TextEditingController _plantHeightController = TextEditingController();
  final TextEditingController _leafSizeController = TextEditingController();
  final TextEditingController _leafColorController = TextEditingController();
  final TextEditingController _pestTypeController = TextEditingController();
  final TextEditingController _diseaseTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop Health Assessment'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Crop Parameters:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            _buildTextField(
              controller: _cropTypeController,
              labelText: 'Crop Type',
              hintText: 'Enter the type of crop',
            ),
            const SizedBox(height: 16.0),
            _buildTextField(
              controller: _plantHeightController,
              labelText: 'Plant Height',
              hintText: 'Enter the height of the plant (in cm)',
            ),
            const SizedBox(height: 16.0),
            _buildTextField(
              controller: _leafSizeController,
              labelText: 'Leaf Size',
              hintText: 'Enter the size of the leaves (in cm)',
            ),
            const SizedBox(height: 16.0),
            _buildTextField(
              controller: _leafColorController,
              labelText: 'Leaf Color',
              hintText: 'Enter the color of the leaves',
            ),
            const SizedBox(height: 32.0),
            Text(
              'symptoms Parameters (if applicable):',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            _buildTextField(
              controller: _diseaseTypeController,
              labelText: 'symptoms Type',
              hintText: ' symptoms of the plant',
            ),
            const SizedBox(height: 32.0),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
// add your code here
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(width: 2, color: Colors.grey),
                  ),
                  elevation: 8,
                  padding: const EdgeInsets.all(16),
                ),
                icon: const Icon(Icons.camera_alt, size: 24),
                label: const Text('Upload Photo'),
              ),
            ),
            const SizedBox(height: 32.0),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                ),
                child: const Text(
                  'Assess Crop Disease and Precautions',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    required String hintText,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
