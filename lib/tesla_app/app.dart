
import 'package:cars/tesla_app/screens/home_screen.dart';
import 'package:cars/tesla_app/screens/lock_screen/lock_screen_page.dart';
import 'package:flutter/material.dart';


class TeslaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 101,101,101)),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home:  LockScreen(),
    );
  }
}
