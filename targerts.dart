import 'package:flutter/material.dart';
class targets extends StatefulWidget {
  const targets({Key? key}) : super(key: key);

  @override
  State<targets> createState() => _targetsState();
}

class _targetsState extends State<targets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('🎯🎯 Goal 13 Targets 🎯🎯',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),),
        centerTitle: true,
      ),
      body:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/1734337.webp'),
            fit: BoxFit.fill, // Adjust the fit to your desired value
          ),
        ),
        padding: EdgeInsets.all(25),
        child: const SizedBox(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    '1️⃣',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text('Strengthen resilience and adaptive capacity to climate-related hazards and natural disasters in all countries',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.deepOrange,
                  ),),
                Text('--------------------------------------------------------------------------------',
                  style: TextStyle(
                    color: Colors.deepOrange,
                  ),),
                Center(
                  child: Text(
                    '2️⃣',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text('Integrate climate change measures into national policies, strategies and planning',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),),
                Text('--------------------------------------------------------------------------------',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                Center(
                  child: Text(
                    '3️⃣',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text('Improve education, awareness-raising and human and institutional capacity on climate change mitigation, adaptation, impact reduction and early warning',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.green,
                  ),),
                Text('--------------------------------------------------------------------------------',
                  style: TextStyle(
                    color: Colors.green,
                  ),),
                Center(
                  child: Text(
                    '4️⃣',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text('Implement the commitment undertaken by developed-country parties to the United Nations Framework Convention on Climate Change to a goal of mobilizing jointly \$100 billion annually by 2020 from all sources to address the needs of developing countries in the context of meaningful mitigation actions and transparency on implementation and fully operationalize the Green Climate Fund through its capitalization as soon as possible',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.deepOrange,
                  ),),
                Text('--------------------------------------------------------------------------------',
                  style: TextStyle(
                    color: Colors.deepOrange,
                  ),),
                Center(
                  child: Text(
                    '5️⃣',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text('Promote mechanisms for raising capacity for effective climate change-related planning and management in least developed countries and small island developing States, including focusing on women, youth and local and marginalized communities.',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),),
                Text('--------------------------------------------------------------------------------',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                Center(
                  child: Text(
                    '6️⃣',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text('Promote mechanisms for raising capacity for effective climate change-related planning and management in least developed countries and small island developing States, including focusing on women, youth and local and marginalized communities',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.green,
                  ),),
                Text('--------------------------------------------------------------------------------',
                  style: TextStyle(
                    color: Colors.green,
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
