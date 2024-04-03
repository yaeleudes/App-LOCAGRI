import 'dart:async';
import 'package:app_locagri/animation.dart';
import 'package:app_locagri/pages/accueil.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Accueil()),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimationDelay(
            delay: 1500, 
            child: SizedBox(
              height: size.height*0.14,
              width: size.width*0.7,
              child: Image.asset("assets/images/logo.jpg"),
            ),    
        ),
      ),
    );
  }
}

// Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
            
        //     SizedBox(height: size.height*0.010,),
        //     // AnimationDelay(
        //     //   delay: 2500, 
        //     //   child: Container(
        //     //     alignment: Alignment.center,
        //     //     child: Text(
        //     //       "Green solutions for Africa",
        //     //       style: GoogleFonts.poppins(
        //     //         color: Colors.green,
        //     //         fontSize: size.height*0.024,
        //     //       ),
        //     //       textAlign: TextAlign.center,
        //     //     ),
        //     //   )
        //     // )
        //   ],
        // ),