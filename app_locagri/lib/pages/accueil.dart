//Page pour l'Accueil
import 'package:app_locagri/pages/cours.dart';
import 'package:app_locagri/pages/quiz.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 10,
        leading: IconButton(
          onPressed: (){SystemNavigator.pop();}, 
          icon: const Icon(Icons.close, color: Colors.white,)
        ),
        title: Text(
          "Accueil",
          style: GoogleFonts.poppins(
            color: Colors.white,
          ),
        ),
        actions: [
          Center(child: Text(
            "0",
            style: GoogleFonts.poppins(
              color: Colors.white,
              // fontSize: size.width*0.044
            ),
          )),
          const Padding(
            padding: EdgeInsets.only(left: 2.0, right: 4.0),
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/taking.png", height: size.height*0.4),
            // SizedBox(
            //   height: size.height*0.14,
            //   width: size.width*0.7,
            //   child: Image.asset("assets/images/taking.png", height: size.height*0.4),
            // ),
            SizedBox(height: size.height*0.012),
            SizedBox(
              height: size.height*0.06,
              width: size.width*0.76,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  side: const BorderSide(color: Colors.green, width: 1.0) 
                ),
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Cours())
                  );
                }, 
                icon: const Icon(Icons.book), 
                label: Text(
                  "Les Leçons",
                  style: GoogleFonts.poppins(
                    color: Colors.white
                  ),
                )),
            ), 
            SizedBox(height: size.height*0.012),
            SizedBox(
              height: size.height*0.06,
              width: size.width*0.76,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  side: const BorderSide(color: Colors.green, width: 1.0) 
                ),
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => const Quiz())
                  );
                }, 
                icon: const Icon(Icons.quiz), 
                label: Text(
                  "Quiz",
                  style: GoogleFonts.poppins(
                    color: Colors.white
                  ),
                )),
            ),
          ],
        ),
      ),
    );
  }
}