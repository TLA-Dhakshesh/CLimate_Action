import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'DisplayWhether.dart';

class Whether_page extends StatefulWidget {
  const Whether_page({Key? key}) : super(key: key);

  @override
  State<Whether_page> createState() => _Whether_pageState();
}
class _Whether_pageState extends State<Whether_page> {
  TextEditingController _textFieldController = TextEditingController();
  String textFieldValue = '';
  double temperature = 0.0;
  String humidity = '';
  String speed = '';
  String deg = '';
  String description = '';
  String main = '';
  String icon = '';

  Future<void> getData(String textFieldValue) async {
    Response response = await get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$textFieldValue&appid=acb83d44b7995b76a19cd4c0c9636930"));
    Map data = jsonDecode(response.body);
    Map mainData = data['main'];
    double temp = mainData['temp'];
    setState(() {
      temperature = temp;
      humidity = mainData['humidity'].toString();
    });

    Map wind = data['wind'];
    speed = wind['speed'].toString();
    deg = wind['deg'].toString();

    List weatherData = data['weather'];
    Map weatherMainData = weatherData[0];
    description = weatherMainData['description'];
    icon = weatherMainData['icon'];
    main = weatherMainData['main'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Weather Update',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/wp2890847.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(30.0),
                child: TextField(
                  controller: _textFieldController,
                  onChanged: (value) {
                    textFieldValue = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter the location',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(width: 5.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await getData(textFieldValue);
                  Map<String, dynamic> weatherData = {
                    'temperature': temperature,
                    'humidity': humidity,
                    'speed': speed,
                    'deg': deg,
                    'description': description,
                    'main': main,
                    'icon':icon,
                  };
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DisplayWhether(
                        weatherData: weatherData,
                      ),
                    ),
                  ).then((value) {
                    // Update weather data when returning from DisplayWhether screen
                    if (value != null) {
                      setState(() {
                        temperature = value['temperature'];
                        humidity = value['humidity'];
                        speed = value['speed'];
                        deg = value['deg'];
                        description = value['description'];
                        main = value['main'];
                        icon = value['icon'];
                      });
                    }
                  });
                },
                child: const Text("Press Here To Know About Live Weather"),
              ),
              const SizedBox(height: 20.0),
              Text(
                'Temperature: $temperature',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Humidity: $humidity',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Wind Speed: $speed',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Wind Degree: $deg',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Description: $description',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Main: $main',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (icon.isNotEmpty) // Add a check to display the image only if iconCode is not empty
                Image.network(
                  getIconImageUrl(icon), // Use the getIconImageUrl function to get the icon image URL
                  width: 50,
                  height: 50,
                ),
            ],
          ),
        ],
      ),
    );
  }

  String getIconImageUrl(String iconCode) {
    return 'http://openweathermap.org/img/w/$iconCode.png';
  }
}
