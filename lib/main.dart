import 'dart:convert';

import 'package:erp_flutter/companyconfig.dart';
import 'package:erp_flutter/dashboard.dart';
import 'package:erp_flutter/loginpage.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
    title: ' Routes Demo',

    // Start the app with the "first" named route. In our case, the app will start
    // on the FirstScreen Widget
    initialRoute: 'splash',
    routes: {
      // When we navigate to the "/first" route, build the FirstScreen Widget
      'splash': (context) => SplashScreen(),
      // When we navigate to the "/second" route, build the SecondScreen Widget
      '/company': (context) => CompanyPage(),
      '/login': (context) => LoginScreen(),
      '/dashboard': (context) => ThirdScreen(),
    },
  ));
}

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 4),
            () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => CompanyPage()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text('Splash Screen'),
        backgroundColor: Colors.green,
          centerTitle:true,
      ),*/
      body: Center(
        child:Text(
          // ignore: argument_type_not_assignable
          "Flutter",
          style: TextStyle(
              color: Colors.green,
              fontSize: 50,
              fontStyle: FontStyle.italic
          ),
        ),
      ),


    );
  }

}




