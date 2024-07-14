import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Fire_status.dart';

class Fire_update extends StatefulWidget {
  const Fire_update({Key? key}) : super(key: key);

  @override
  State<Fire_update> createState() => _Fire_updateState();
}

class _Fire_updateState extends State<Fire_update> {
  final TextEditingController _monthController = TextEditingController();
  final TextEditingController _dayController = TextEditingController();
  final TextEditingController _ffmcController = TextEditingController();
  final TextEditingController _dmcController = TextEditingController();
  final TextEditingController _dcController = TextEditingController();
  final TextEditingController _isiController = TextEditingController();
  final TextEditingController _tempController = TextEditingController();
  final TextEditingController _rhController = TextEditingController();
  final TextEditingController _windController = TextEditingController();
  final TextEditingController _rainController = TextEditingController();
  String _prediction = '';

  Future<void> _fetchPrediction() async {
    final month = _monthController.text;
    final day = _dayController.text;
    final ffmc = _ffmcController.text;
    final dmc = _dmcController.text;
    final dc = _dcController.text;
    final isi = _isiController.text;
    final temp = _tempController.text;
    final rh = _rhController.text;
    final wind = _windController.text;
    final rain = _rainController.text;

    const baseUrl = 'https://d03e-103-224-33-130.ngrok-free.app/Fire_model';
    final url = Uri.parse(
        '$baseUrl?month=$month&day=$day&FFMC=$ffmc&DMC=$dmc&DC=$dc&ISI=$isi&temp=$temp&RH=$rh&wind=$wind&rain=$rain');

    print('API Request: $url');

    try {
      final response = await http.get(url);
      print('API Response: ${response.body}');

      if (response.statusCode == 200) {
        final decodedResponse = json.decode(response.body);
        final prediction = decodedResponse['prediction'];

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
          'Forest Fire',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/forest1.jpg'),
              fit: BoxFit.cover,
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
                  controller: _monthController,
                  decoration: const InputDecoration(
                    hintText: 'Month (ex: jan, feb, mar, apr, ... dec)',
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
                  controller: _dayController,
                  decoration: const InputDecoration(
                    hintText: 'Day (ex: mon, tue, wed, thu, ... sun)',
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
                  controller: _ffmcController,
                  decoration: const InputDecoration(
                    hintText: 'FFMC  (only point values ex: XX.YY)',
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
                  controller: _dmcController,
                  decoration: const InputDecoration(
                    hintText: 'DMC  (only point values ex: XX.YY)',
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
                  controller: _dcController,
                  decoration: const InputDecoration(
                    hintText: 'DC  (only point values ex: XX.YY)',
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
                  controller: _isiController,
                  decoration: const InputDecoration(
                    hintText: 'ISI  (only point values ex: XX.YY)',
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
                  controller: _tempController,
                  decoration: const InputDecoration(
                    hintText: 'Temperature in kelvin(0°C + 273.15 = 273.15K)',
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
                  controller: _rhController,
                  decoration: const InputDecoration(
                    hintText: 'Relative Humidity (only point values ex: XXX)',
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
                  controller: _windController,
                  decoration: const InputDecoration(
                    hintText: 'Wind  (only point values ex: XX.YY)',
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
                  controller: _rainController,
                  decoration: const InputDecoration(
                    hintText: 'Rain  (only point values ex: XX.YY)',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _fetchPrediction().then((_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Fire_status(prediction: _prediction),
                      ),
                    );
                  });
                },
                child: const Text('Submit'),
              ),
              const SizedBox(height: 20),
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
