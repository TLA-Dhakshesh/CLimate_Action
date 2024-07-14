import 'package:climate_tce/targerts.dart';
import 'package:flutter/material.dart';

import 'facts_and_figures.dart';
class Awareness extends StatefulWidget {
  const Awareness({Key? key}) : super(key: key);

  @override
  State<Awareness> createState() => _AwarenessState();
}

class _AwarenessState extends State<Awareness> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: Colors.black,
          title: const Text(
            'Goal 13: Urgent action to combat climate change',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 25.0,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            image: DecorationImage(
                image: AssetImage('assets/AdobeStock_54132491.jpeg'),
                fit: BoxFit.fill, // Adjust the fit to your desired value
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 350,
                    child: SingleChildScrollView(
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        child: Column(
                          children: const [
                            Text('👉Rising temperatures',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.red,
                              ),),
                            SizedBox(height: 20),
                            Text(
                              'One of the most significant effects of climate change is the overall increase in global temperatures. This warming trend leads to various consequences such as heatwaves, droughts, and melting ice caps.',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              '👉Extreme weather events',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Climate change is associated with an increase in the frequency and intensity of extreme weather events. These include hurricanes, cyclones, floods, wildfires, and severe storms, which can cause significant damage to ecosystems, infrastructure, and human lives.',
                                style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w900,
                            color: Colors.black,
                            ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              '👉Sea level rise',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red,
                                ),
                              ),
                            SizedBox(height: 20),
                            Text(
                              ' As global temperatures rise, the polar ice caps and glaciers melt, resulting in a rise in sea levels. This poses a threat to coastal communities, low-lying islands, and delta regions, leading to increased coastal erosion, saltwater intrusion into freshwater sources, and the displacement of populations.',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              '👉Loss of biodiversity',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Climate change contributes to the loss of biodiversity as it disrupts ecosystems and alters natural habitats. Rising temperatures, changes in precipitation, and extreme weather events can lead to habitat destruction, the spread of invasive species, and increased risk of species extinction.',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                  const Text(
                      'United Nations Statements',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  const Text('👇👇👇👇👇👇👇👇',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder : (context) => facts_and_figures()),
                          );
                        }, child:const Text('Facts and Figures'),
                        ),
                        ElevatedButton(onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder : (context) => targets()),
                          );
                        }, child:const Text('Goal 13 Targets'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
