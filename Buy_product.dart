import 'package:flutter/material.dart';

class Buy_product extends StatefulWidget {
  const Buy_product({Key? key}) : super(key: key);

  @override
  State<Buy_product> createState() => _Buy_productState();
}

class _Buy_productState extends State<Buy_product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buy This Crop',
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
        body: Container(
          child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Country'
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter your State'
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your Distict'
                  ),
                )
              ),
              Container(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your pincode'
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your Address'
                    ),
                  )
              ),
              Container(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter your Predicted Crop'
                    ),
                  )
              ),
              SizedBox(height: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Buy_product(),
                      ),
                    );
                  },
                      child: Text('            Submit            ')
                  )
                ],
              ),
            ],
          ),
          ),
        ),
    );
  }
}
