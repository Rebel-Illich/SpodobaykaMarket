import 'dart:async';

import 'package:flutter/material.dart';
import '../customer_home/customer_home.dart';

class MySplashScreen extends StatefulWidget{
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();

}

class _MySplashScreenState extends State<MySplashScreen>{


  startTimer(){
    Timer(const Duration(seconds: 4), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c) => const CustomerHomeScreen()));
    });
  }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/splash.jpg"),
              ),

             const SizedBox(height: 10),

             const Padding(
                  padding:  EdgeInsets.all(18.0),
                child: Text(
                  "Sell Sushi Online",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                    fontFamily: "Signatra",
                    letterSpacing: 3,
                  )
                ),
              )
            ],
          )
        ),
      ),
    );
  }

}