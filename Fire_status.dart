import 'dart:io';

import 'package:flutter/material.dart';

class Fire_status extends StatefulWidget {
  final String prediction;

  const Fire_status({Key? key, required this.prediction}) : super(key: key);

  @override
  State<Fire_status> createState() => _Fire_statusState();
}

class _Fire_statusState extends State<Fire_status> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 500),
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
    final String imagePath = widget.prediction;
    String text = '';
    String assetImagePath;
    if (imagePath == 'Large Fire') {
      assetImagePath = 'assets/large_fire.webp';
      text = 'More than 10 hectares there is fire';
    } else if (imagePath == 'Small Fire') {
      assetImagePath = 'assets/samll fire.jpeg';
      text = 'More than 0 hectares and less than or equal to 10 hectares';
    } else if (imagePath == 'No Fire'){
      assetImagePath = 'assets/no_fire.webp';
      text = 'Your forest is safe';
    }
    else {
      assetImagePath = 'assets/select.jpeg';
      text = 'No values enter';
    }


    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Status',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(assetImagePath),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(_animation.value, 0.0),
                    child: Text(
                      'Prediction: ${widget.prediction} '
                          'Current Situation: $text',
                        style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
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
