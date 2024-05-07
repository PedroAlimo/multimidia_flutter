import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:analog_clock/analog_clock.dart';

import 'NavigationPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    String formattedDate =
        '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bem-vindo Pedro Alimo'),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            formattedDate,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          )),
          Expanded(
            child: AnalogClock(
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0, color: Colors.black),
                  color: Colors.transparent,
                  shape: BoxShape.circle),
              width: 250.0,
              isLive: true,
              hourHandColor: Colors.black,
              minuteHandColor: Colors.black,
              showSecondHand: false,
              numberColor: Colors.black87,
              showNumbers: true,
              showAllNumbers: false,
              textScaleFactor: 1.4,
              showTicks: false,
              showDigitalClock: false,
              datetime: DateTime(2019, 1, 1, 9, 12, 15),
            ),
          ),
          Center(
            child: Text(
              'Tocando agora',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.skip_previous,
                size: 30,
              ),
              Icon(Icons.play_arrow, size: 30),
              Icon(Icons.skip_next, size: 30)
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              'Sunflower - Spider-Man: Into the Spider Verse',
              style: TextStyle(fontSize: 15),
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (contex) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NavigationPage()));
        },
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.gps_fixed,
                color: Colors.white,
              ),
              label: 'Navegação')
        ],
      ),
    );
  }
}
