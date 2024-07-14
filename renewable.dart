import 'dart:ui';

import 'package:flutter/material.dart';

class renewable extends StatefulWidget {
  const renewable({Key? key}) : super(key: key);

  @override
  State<renewable> createState() => _renewableState();
}

class _renewableState extends State<renewable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Renwable Energy',
        style: TextStyle(
          fontSize: 30,
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/renewa.jpg'),
            fit: BoxFit.fill,
          ),
        ),
            padding: const EdgeInsets.all(30),
            child: const SingleChildScrollView(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('THE KEY TO SOLVING CLIMATE CHANGE CRISIS',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              SizedBox(height: 30),
              Text('Climate change is a pressing issue that affects the entire planet. The increase in greenhouse gas emissions is causing the Earths temperature to rise, leading to various environmental problems such as rising sea levels, extreme weather conditions, and loss of biodiversity. But there is hope. Renewable energy is one solution that can help mitigate the effects of climate change and transition to a more sustainablefuture.',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              SizedBox(height: 30),
              Text('Types of Renewable Energy',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              SizedBox(height: 15),
              Text('Renewable energy sources, such as solar, wind, hydro, geothermal, and biomass, are sustainable and emit little to no harmful pollutants. By harnessing these energy sources, we can reduce greenhouse gas emissions and reduce our dependence on fossil fuels.',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              Text('Advantages of Renewable Energy',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              SizedBox(height: 15),
              Text('Adopting renewable energy has several benefits. It is a long-term and sustainable energy source, reducing our dependence on finite fossil fuels. Furthermore, renewable energy reduces the amount of harmful pollutants emitted into the atmosphere, improving the overall health of the planet. Additionally, renewable energy has become increasingly cost- competitive with traditional energy sources, making it a financially viable option for individuals and organizations alike.',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              SizedBox(height: 30),
              Text('Policies and Initiatives to Encourage Renewable Energy Adoption',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              SizedBox(height: 15),
              Text('While there are challenges to the widespread adoption of renewable energy, there are also policies and initiatives in place to encourage it. Governments around the world are offering subsidies and tax credits to incentivize renewable energy production and usage Investment in research and development is also helping to improve the efficiency and affordability of renewable energy technology.',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              SizedBox(height: 30),
              Text('Summary',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
              SizedBox(height: 15),
              Text('In conclusion, renewable energy is the key to solving the climate change crisis. By transitioning to more sustainable energy sources, we can reduce greenhouse gas emissions and protect the planet for future generations. It is important for individuals and organizations to support and invest in renewable energy to ensure a sustainable future.Dont wait any longer to take action. Start exploring renewable energy options for your home or business today and do your part to protect the planet',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),)
            ],
          ),
        ),
      )
            );
  }
}
