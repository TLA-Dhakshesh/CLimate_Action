import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Crop_status.dart';
class Crop_update extends StatefulWidget {
  const Crop_update({Key? key}) : super(key: key);

  @override
  State<Crop_update> createState() => _Crop_updateState();
}

class _Crop_updateState extends State<Crop_update> {
  final TextEditingController _Nitrogen = TextEditingController();
  final TextEditingController _Phosphorous = TextEditingController();
  final TextEditingController _Potassium = TextEditingController();
  final TextEditingController _temperature = TextEditingController();
  final TextEditingController _humidity = TextEditingController();
  final TextEditingController _phvalue = TextEditingController();
  final TextEditingController _rain = TextEditingController();
  String _prediction = '';

  Future<void> _fetchPrediction() async {
    final nitrogen = _Nitrogen.text;
    final phosphorous = _Phosphorous.text;
    final potassium = _Potassium.text;
    final temp = _temperature.text;
    final humid = _humidity.text;
    final ph = _phvalue.text;
    final rain = _rain.text;

    const baseUrl = 'https://d03e-103-224-33-130.ngrok-free.app/crop_pred';
    final url = Uri.parse(
        '$baseUrl?N=$nitrogen&P=$phosphorous&K=$potassium&temperature=$temp&humidity=$humid&pH=$ph&rainfall=$rain');

    print('API Request: $url');

    try {
      final response = await http.get(url);
      print('API Response: ${response.body}');

      if (response.statusCode == 200) {
        final decodedResponse = json.decode(response.body);
        final prediction = decodedResponse['predicted_label'];

        setState(() {
          _prediction = prediction;
          print('Prediction: $_prediction');
        });
      } else {
        setState(() {
          _prediction = 'Error: ${response.statusCode}';
        });
      }
    } catch (error) {
      setState(() {
        _prediction = 'Error: $error';
      });
    }
    print(_prediction);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'Crop Prediction',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/crop image.jpg'),
              fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 5.0,
                  ),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: TextField(
                  controller: _Nitrogen,
                  decoration: const InputDecoration(
                    hintText: 'Enter the Nitrogen value (ex: XXX)',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 5.0,
                  ),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: TextField(
                  controller: _Phosphorous,
                  decoration: const InputDecoration(
                    hintText: 'Enter the Phosphorous value (ex: XXX)',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 5.0,
                  ),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: TextField(
                  controller: _Potassium,
                  decoration: const InputDecoration(
                    hintText: 'Enter the Potassium value (ex: XXX)',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 5.0,
                  ),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: TextField(
                  controller: _temperature,
                  decoration: const InputDecoration(
                    hintText: 'Temperature in °C',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 5.0,
                  ),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: TextField(
                  controller: _humidity,
                  decoration: const InputDecoration(
                    hintText: 'Enter the humidity (ex: XXX.YY)',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 5.0,
                  ),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: TextField(
                  controller: _phvalue,
                  decoration: const InputDecoration(
                    hintText: 'Enter the pH value',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 5.0,
                  ),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: TextField(
                  controller: _rain,
                  decoration: const InputDecoration(
                    hintText: 'Rainfall in millimeters',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const SizedBox(height: 130),
              ElevatedButton(
                onPressed: () {
                  _fetchPrediction().then((_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Crop_status(prediction: _prediction),
                      ),
                    );
                  });
                },
                child: const Text('Submit'),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 100),
              Text(
                _prediction,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
