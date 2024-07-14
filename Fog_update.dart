import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'Fog_status.dart';

class Fog_update extends StatefulWidget {
  const Fog_update({Key? key}) : super(key: key);

  @override
  State<Fog_update> createState() => _Fog_updateState();
}

class _Fog_updateState extends State<Fog_update> {

  TextEditingController _visi = TextEditingController();
  int visible = 0;
  String description = '';

  Future<void> _fetchprediction() async {
    final location = _visi.text;

    Response response = await get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=acb83d44b7995b76a19cd4c0c9636930"));
    Map data = jsonDecode(response.body);
    visible = data['visibility'];

    List weatherData = data['weather'];
    Map weatherMainData = weatherData[0];
    description = weatherMainData['description'];

    setState(() {
      print('Visibility :  $visible');
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          '🌫️ Fog Updates 🌫️',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fogpage.jpg'),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _visi,
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
            const SizedBox(height: 80),
            ElevatedButton(onPressed: ()
                {
                  _fetchprediction().then((_)
                      {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Fog_status(Visibility : visible.toString(), Description : description,)),
                        );
                      }
                  );
                }
                , child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
