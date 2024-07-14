
import 'package:flutter/material.dart';

import 'Buy_product.dart';

class Crop_status extends StatefulWidget {
  final String prediction;

  const Crop_status({Key? key, required this.prediction}) : super(key: key);

  @override
  State<Crop_status> createState() => _Crop_statusState();
}

class _Crop_statusState extends State<Crop_status> with SingleTickerProviderStateMixin {

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
    String assetImagePath;
    if (imagePath == 'rice') {
      assetImagePath = 'assets/rice.jpeg';
    } else if (imagePath == 'maize') {
      assetImagePath = 'assets/maize.jpeg';
    } else if (imagePath == 'chickpea'){
      assetImagePath = 'assets/chick pea.jpg';
    }
      else if (imagePath == 'kidneybeans'){
        assetImagePath = 'assets/kidney beans.jpg';
    }
      else if (imagePath == 'pigeonpeas'){
        assetImagePath = 'assets/pigeon pea.jpg';
    }
    else if (imagePath == 'mothbeans') {
      assetImagePath = 'assets/moth bean.jpg';
    } else if (imagePath == 'mungbean'){
      assetImagePath = 'assets/mung bean.jpg';
    }
    else if (imagePath == 'blackgram'){
      assetImagePath = 'assets/black gram.jpg';
    }
    else if (imagePath == 'lentil'){
      assetImagePath = 'assets/lentil.webp';
    }
    else if (imagePath == 'pomegranate') {
      assetImagePath = 'assets/pomegranate.jpg';
    } else if (imagePath == 'banana'){
      assetImagePath = 'assets/banana.jpg';
    }
    else if (imagePath == 'mango'){
      assetImagePath = 'assets/mango.webp';
    }
    else if (imagePath == 'watermelon'){
      assetImagePath = 'assets/watermelon.webp';
    }
    else if (imagePath == 'muskmelon'){
      assetImagePath = 'assets/muskmelon.jpg';
    }
    else if (imagePath == 'apple'){
      assetImagePath = 'assets/apple.jpg';
    }
    else if (imagePath == 'orange'){
      assetImagePath = 'assets/orange.jpg';
    }
    else if (imagePath == 'papaya') {
      assetImagePath = 'assets/papaya.webp';
    } else if (imagePath == 'coconut'){
      assetImagePath = 'assets/cocunut.jpeg';
    }
    else if (imagePath == 'cotton'){
      assetImagePath = 'assets/cotton.webp';
    }
    else if (imagePath == 'jute'){
      assetImagePath = 'assets/jute.jpg';
    }
    else if (imagePath == 'coffee'){
      assetImagePath = 'assets/coffee.jpg';
    }
    else {
      assetImagePath = 'assets/select.jpeg';
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
            fit: BoxFit.contain,
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
                      'Prediction: ${widget.prediction}',
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
            SizedBox(height: 550),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Buy_product(),
                    ),
                  );
                },
                    child: Text('❗ ❗ ❗ Buy This Crop ❗ ❗ ❗'))
              ],
            )
          ],
        ),
        )
      );

  }
}
