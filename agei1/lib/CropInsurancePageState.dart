// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CropInsurancePage extends StatefulWidget {
  @override
  _CropInsurancePageState createState() => _CropInsurancePageState();
}

class _CropInsurancePageState extends State<CropInsurancePage> {
  final TextEditingController _cropNameController = TextEditingController();
  final TextEditingController _cropAreaController = TextEditingController();
  final TextEditingController _cropLossController = TextEditingController();
  final TextEditingController _cropValueController = TextEditingController();
  bool _isDroughtSelected = false;
  bool _isFloodSelected = false;
  bool _isPestSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        centerTitle: true,
        title: Text(
          'Crop Insurance',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32.0),
              Text(
                'Enter Crop Details',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[600],
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _cropNameController,
                decoration: InputDecoration(
                  labelText: 'Crop Name',
                  hintText: 'Enter the name of the crop',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green[600]!,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _cropAreaController,
                decoration: InputDecoration(
                  labelText: 'Crop Area (in acres)',
                  hintText: 'Enter the area of the crop in acres',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green[600]!,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Select the type of crop loss',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[600],
                ),
              ),
              SizedBox(height: 16.0),
              CheckboxListTile(
                title: Text('Drought'),
                value: _isDroughtSelected,
                onChanged: (newValue) {
                  setState(() {
                    _isDroughtSelected = newValue!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                title: Text('Flood'),
                value: _isFloodSelected,
                onChanged: (newValue) {
                  setState(() {
                    _isFloodSelected = newValue!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                title: Text('Disease'),
                value: _isPestSelected,
                onChanged: (newValue) {
                  setState(() {
                    _isPestSelected = newValue!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              SizedBox(height: 32.0),
              Text(
                'Enter Crop Value and Loss',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[600],
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _cropValueController,
                decoration: InputDecoration(
                  labelText: 'Crop Value (in rupees)',
                  hintText: 'Enter the value of the crop in rupees',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green[600]!,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _cropLossController,
                decoration: InputDecoration(
                  labelText: 'Crop Loss (in percentage)',
                  hintText: 'Enter the loss percentage of the crop',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green[600]!,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 32.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Implement crop insurance calculation
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text('Calculate'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
