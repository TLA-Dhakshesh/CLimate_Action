import 'dart:io';

import 'package:flutter/material.dart';

class Fog_status extends StatefulWidget {
  final String Visibility;
  final String Description;

  const Fog_status({
    Key? key,
    required this.Visibility,
    required this.Description,
  }) : super(key: key);

  @override
  State<Fog_status> createState() => _Fog_statusState();
}

class _Fog_statusState extends State<Fog_status> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 10.0).animate(_animationController);
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int? imagePath = int.tryParse(widget.Visibility);
    String assetImage;
    String tex = '';
    if(imagePath! > 1000) {
      assetImage = 'assets/nofog.jpeg';
      tex = 'The Status of this location is no Fog';
    }
    else if(imagePath <= 1000 && imagePath > 500) {
      assetImage = 'assets/lightfig..jpg';
      tex = 'The Status of this location is Light Fog';
    }
    else if(imagePath <= 500 && imagePath > 200) {
      assetImage = 'assets/patchyfog.jpg';
      tex = 'The Status of this location is Patchy Fog';
    }
    else if(imagePath <= 200 && imagePath > 100) {
      assetImage = 'assets/moderatefog.jpg';
      tex = 'The Status of this location is Moderate Fog';
    }
    else if(imagePath <= 100) {
      assetImage = 'assets/densefog.webp';
      tex = 'The Status of this location is Dense Fog';
    }
    else {
      assetImage = 'assets/select.jpg';
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fog Status',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(assetImage),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(_animation.value, 0.0),
                    child: Text(
                       'Status : $tex '
                       '|--------------------------|'
                      'Current Situation: ${widget.Visibility} '
                       '|--------------------------|'
                           'Sky : ${widget.Description}  '
                       '|--------------------------|',
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
