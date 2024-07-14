import 'package:climate_tce/renewable.dart';

import 'DiseasePredictionScreen.dart';
import 'package:flutter/material.dart';

import 'package:climate_tce/Whether_page.dart';

import 'Awareness.dart';
import 'Crop_update.dart';
import 'Fire_update.dart';
import 'Fog_update.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Climate Action',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.black,
      ),
    body: Container(
      padding: const EdgeInsets.all(30),
    decoration: const BoxDecoration(
    image: DecorationImage(
    image: AssetImage('assets/firstone.jpg'),
    fit: BoxFit.fill,
    ),
    ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(50.0),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 100),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Whether_page(),
                        ),);
                  },
                  child: const Text('☀⛈️WEATHER UPDATE☀️⛈'),
                ),
                SizedBox(height: 10),
                FilledButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => Crop_update()
                        ),
                    );
                  },
                  child: const Text('🌾🌾CROP PREDICTION🌾🌾'),
                ),
                SizedBox(height: 10),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Fire_update()
                      ),
                    );
                  },
                  child: const Text('🔥FOREST FIRE PREDICTION🔥'),
                ),
                  SizedBox(height: 10),
                  FilledButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Fog_update()
                          ),
                      );
                    },
                    child: const Text('🌫️🌫️FOG PREDICTION🌫️🌫️'),
                  ),
                  SizedBox(height: 10),
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DiseasePredictionScreen()
                        ),
                      );
                    },
                    child: const Text('🤒😷DISEASE PREDICTION😷🤒'),
                  ),
                  SizedBox(height: 10),
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => renewable()
                        ),
                      );
                    },
                    child: const Text('⚡⚡RENEWABLE ENERGY⚡⚡'),
                  ),
                  SizedBox(height: 10),
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Awareness()
                        ),
                      );
                    },
                    child: const Text('🆒 AWARENESS 🆒'),
                  ),
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}

