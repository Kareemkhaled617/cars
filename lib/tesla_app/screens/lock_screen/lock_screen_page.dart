
import 'package:flutter/material.dart';


import '../buttons/lock_button.dart';


import 'components/car_component.dart';
import 'components/title.dart';


class LockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
            const LockScreenTitle(
            upperTitle: "Tesla",
            title: "Cybertruck",
          ),
          const Expanded(
            child: CarComponent(
              carSpeed: "297",
            ),
          ),
          const Text(
            "A/C is turned on",
            style: TextStyle(
              color:  Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          LockButton(
            onTap: () {


            },
            child: Image.asset(
              "assets/images/page_one_lock.png",
              width: 60.0,
              height: 60.0,
            ),
          ),
          const Text(
            "Tap to open the car",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
