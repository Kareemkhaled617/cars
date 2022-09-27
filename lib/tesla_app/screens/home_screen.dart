import 'package:cars/tesla_app/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        backgroundColor: Colors.black,
        body:  Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/img.png')
            )
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Material(
                  type: MaterialType
                      .transparency, // to visible splash / ripple effect. the parent's decoration color is covering ripple effect
                  child: Row(
                    children: [
                    const Text('Map',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,color: Colors.grey),),
                      const Spacer(),
                      Stack(
                        children: [
                          IconButton(
                              iconSize: 50,
                              splashRadius: 25,
                              onPressed: () {},
                              icon: const FittedBox(
                                  child: Icon(Icons.account_circle_rounded))),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Container(
                              width: 12,
                              height: 12,
                              decoration: const BoxDecoration(
                                  color: kPrimaryColor, shape: BoxShape.circle),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Image.asset('assets/images/homepage_tesla.png'),
                 CircularPercentIndicator(
                  radius: 200.0,
                  lineWidth: 25.0,
                  animation: true,
                  percent: 0.8,
                  center: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          '80%',
                          style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          'Charged',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: kPrimaryColor,
                  backgroundColor: kProgressBackGroundColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/lighting.svg'),
                    const Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: Text('Charging.. 14 mins remaining'),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: kCardColor,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            width: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Temperature',
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                const Text('Cabin'),
                                const SizedBox(height: 10),
                                Center(
                                  child: RichText(
                                    text: TextSpan(children: [
                                      const TextSpan(
                                          text: '21',
                                          style: TextStyle(
                                              fontSize: 50,
                                              fontWeight: FontWeight.bold,
                                              color: kPrimaryColor)),
                                      WidgetSpan(
                                        child: Transform.translate(
                                          offset: const Offset(0, -12),
                                          child: const Text('C',
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold,
                                                  color: kPrimaryColor)),
                                        ),
                                      )
                                    ]),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Card(
                        color: kCardColor,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            width: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Consumption',
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('Today'),
                                SizedBox(height: 10),
                                Center(
                                  child: Text('4.3',
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.bold,
                                          color: kPrimaryColor)),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  const SettingsScreen(),
                      ),
                    );
                  },
                  child: _animatedButton(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget  _animatedButton() {
    return Container(
      height: 70,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: const [
            BoxShadow(
              color: Color(0x80000000),
              blurRadius: 12.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff33ccff),
              Color(0xffff99cc),
            ],
          )),
      child: const Center(
        child: Text(
          'Press',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
    );
  }
}
