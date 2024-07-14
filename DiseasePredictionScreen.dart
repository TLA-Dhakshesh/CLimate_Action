import 'package:flutter/material.dart';

class DiseasePredictionScreen extends StatefulWidget {
  @override
  _DiseasePredictionScreenState createState() => _DiseasePredictionScreenState();
}

class _DiseasePredictionScreenState extends State<DiseasePredictionScreen> {
  double temperature = -35.0;
  double rainfall = 0.0;
  double bodyTemperature = 35.0;
  bool sickness = false;
  bool drowsiness = false;
  bool dehydration = false;
  bool fatigue = false;
  bool muscleAches = false;
  bool headache = false;
  bool lossOfAppetite = false;
  bool coughing = false;
  bool shortnessOfBreath = false;
  String predictedDisease = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disease Prediction',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Climatic Conditions',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text('Temperature (in °C)'),
            Slider(
              value: temperature,
              min: -35,
              max: 50,
              divisions: 50,
              onChanged: (value) {
                setState(() {
                  temperature = value;
                });
              },
            ),
            Text('Temperature (in °C): $temperature'),
            SizedBox(height: 10),
            Text('Rainfall (in mm)'),
            Slider(
              value: rainfall,
              min: 0,
              max: 500,
              divisions: 50,
              onChanged: (value) {
                setState(() {
                  rainfall = value;
                });
              },
            ),
            Text('Rainfall (in mm) : $rainfall'),
            SizedBox(height: 10),
            Text('Body Temperature (in °C)'),
            Slider(
              value: bodyTemperature,
              min: 35,
              max: 45,
              divisions: 50,
              onChanged: (value) {
                setState(() {
                  bodyTemperature = value;
                });
              },
            ),
            Text('Body Temperature (in °C): $bodyTemperature'),
            SizedBox(height: 30),
            Text(
              'Symptoms',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            CheckboxListTile(
              title: Text('Sickness'),
              value: sickness,
              onChanged: (value) {
                setState(() {
                  sickness = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Drowsiness'),
              value: drowsiness,
              onChanged: (value) {
                setState(() {
                  drowsiness = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Dehydration'),
              value: dehydration,
              onChanged: (value) {
                setState(() {
                  dehydration = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Fatigue'),
              value: fatigue,
              onChanged: (value) {
                setState(() {
                  fatigue = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Muscle Aches'),
              value: muscleAches,
              onChanged: (value) {
                setState(() {
                  muscleAches = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Headache'),
              value: headache,
              onChanged: (value) {
                setState(() {
                  headache = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Loss of Appetite'),
              value: lossOfAppetite,
              onChanged: (value) {
                setState(() {
                  lossOfAppetite = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Coughing'),
              value: coughing,
              onChanged: (value) {
                setState(() {
                  coughing = value ?? false;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Shortness of Breath'),
              value: shortnessOfBreath,
              onChanged: (value) {
                setState(() {
                  shortnessOfBreath = value ?? false;
                });
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                predictDisease();
              },
              child: Text('Predict Disease'),
            ),
            SizedBox(height: 30),
            Text(
              'Predicted Disease:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              predictedDisease.isNotEmpty ? predictedDisease : 'No prediction',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  void predictDisease() {
    setState(() {
      // Reset the predicted disease
      predictedDisease = '';

      // Malaria prediction
      if (temperature >= 25.0 &&
          rainfall >= 100.0 &&
          bodyTemperature >= 37.0 &&
          (sickness || drowsiness || dehydration) &&
          (fatigue || muscleAches) && (headache || lossOfAppetite)) {
        predictedDisease = 'Malaria';
      }
      // Dengue prediction
      if (temperature >= 30.0 && bodyTemperature >=39 &&
          rainfall >= 200.0 &&
          (sickness && headache && lossOfAppetite)) {
        predictedDisease = 'Dengue';
      }

// Heatstroke prediction
      if (temperature >= 35.0 && (fatigue || drowsiness) && dehydration) {
        predictedDisease = 'Heatstroke';
      }

// Influenza prediction
      if (temperature <= 20.0 &&
          rainfall <= 50.0 &&
          (sickness || fatigue || muscleAches) &&( headache || lossOfAppetite)) {
        predictedDisease = 'Influenza';
      }

// Typhoid prediction
      if (temperature >= 30.0 &&
          rainfall >= 150.0 &&
          (sickness || fatigue) && lossOfAppetite) {
        predictedDisease = 'Typhoid';
      }

// Cholera prediction
      if (rainfall >= 200.0 && (sickness && dehydration)) {
        predictedDisease = 'Cholera';
      }

// Asthma prediction
      if (temperature <= 15.0 &&
          (sickness || fatigue )&& coughing && shortnessOfBreath) {
        predictedDisease = 'Asthma';
      }

// Pneumonia prediction
      if (temperature <= 20.0 &&
          rainfall >= 50.0 &&
          (sickness || fatigue )&& (coughing || shortnessOfBreath)) {
        predictedDisease = 'Pneumonia';
      }
      if (predictedDisease.isEmpty) {
        predictedDisease = 'No disease predicted';
      }
    });
  }
}
