import 'package:flutter/material.dart';

class DisplayWhether extends StatelessWidget {
  final Map<String, dynamic> weatherData;
  const DisplayWhether({
    Key? key,
    required this.weatherData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather Details',
        style: TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/wp2890847.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 10.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child : Text('Temperature in kelvin: ${weatherData['temperature']}',
              style : const TextStyle(
          fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
              ),
              ),
        Container(
          padding: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 10.0,
            ),
            borderRadius: BorderRadius.circular(2.0),
          ),
              child : Text('Humidity: ${weatherData['humidity']}',
                style : const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
        ),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 10.0,
                  ),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child : Text('Speed: ${weatherData['speed']}',
                  style : const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 10.0,
                  ),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child : Text('Degree: ${weatherData['deg']}',
                  style : const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
        Container(
        padding: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 10.0,
          ),
          borderRadius: BorderRadius.circular(2.0),
        ),
        child : Row(
          children: [
            Image.network(
              getIconImageUrl(weatherData['icon']),
              width: 50,
              height: 50,
            ),
            const SizedBox(width: 10.0),
            Text('Description: ${weatherData['description']}',
              style : const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
        Container(
        padding: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 10.0,
          ),
          borderRadius: BorderRadius.circular(2.0),
        ),
        child : Text('Main: ${weatherData['main']}',
          style : const TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
            ],
          ),
        ),
      ),
    );

  }

  String getIconImageUrl(String icon) {
    return 'http://openweathermap.org/img/w/$icon.png';
  }
}
