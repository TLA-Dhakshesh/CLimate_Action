
import 'package:flutter/material.dart';
class facts_and_figures extends StatefulWidget {
  const facts_and_figures({Key? key}) : super(key: key);

  @override
  State<facts_and_figures> createState() => _facts_and_figuresState();
}

class _facts_and_figuresState extends State<facts_and_figures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title:const Text('💀⚡  Facts and Figures  ⚡💀',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
        ),
      ),
        body:Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/18192351-word-danger-on-digital-background.webp'),
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
              Text('In 2021, the global mean temperature was about 1.1°C above the pre-industrial level (from 1850 to 1900). The years from 2015 to 2021 were the seven warmest on record.',
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
                  '2️⃣',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text('The global annual mean temperature is projected to rise beyond 1.5°C above pre-industrial levels in at least one of the next five years.',
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
              Text('Global carbon dioxide (CO2) emissions declined by 5.2 per cent in 2020 due to lowered energy demand caused by COVID-19-induced social and economic disruptions. But with the phasing out of COVID-related restrictions, energy-related CO2 emissions for 2021 rose by 6 per cent, reaching their highest level ever.',
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
                  '4️⃣',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text('Climate finance provided and mobilized by developed countries totalled \$79.6 billion in 2019, up from \$78.3 billion in 2018. It is estimated that \$1.6 trillion to \$3.8 trillion will be needed each year through 2050 for the world to transition to a low-carbon future and avoid warming exceeding 1.5\u00B0',
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
                  '5️⃣',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text('About one third of global land areas will suffer at least moderate drought by 2100.',
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
              Text('The sea level could rise 30 to 60 centimetres by 2100, even if greenhouse gas emissions are sharply reduced and global warming is limited to well below 2°C.',
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
                  '7️⃣',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Text('About 70 to 90 per cent of warm-water coral reefs will disappear even if the 1.5°C threshold is reached; they would die off completely at the 2°C level.',
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
                  '8️⃣',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text('3 billion to 3.6 billion people live in contexts that are highly vulnerable to climate change.',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),),
              Text('---------------------------------------------------------------------------------',
                style: TextStyle(
                  color: Colors.white,
                ),),
              Center(
                child: Text(
                  '9️⃣',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Text('By 2030, an estimated 700 million people will be at risk of displacement by drought alone.',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
