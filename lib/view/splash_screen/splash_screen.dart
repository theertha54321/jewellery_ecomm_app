import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/view/bottom_nav/bottom_nav.dart';
import 'package:jewellery_ecomm_app/view/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{
  
late AnimationController _textcontroller;
late Animation<double> _textanimation;

@override
  void initState() {
    
    super.initState();



    

      _textcontroller=AnimationController(
      duration: Duration(seconds: 4),
      vsync: this);
      _textanimation = Tween<double>(begin: 0.0,end: 1.0).animate(_textcontroller);
      

      Future.delayed(Duration(seconds: 2),(){
        _textcontroller.forward();
      });


    Timer(Duration(seconds: 6), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>
     BottomNav()
      ));
    });
  }


  @override

  void dispose(){
   
    _textcontroller.dispose();
    super.dispose();
  }



  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/splashimage.jpg"))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 200,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image(
                    height: 70,
                    width: 50,
                    image: AssetImage(
                    
                    "assets/images/WhatsApp Image 2024-10-26 at 19.56.58.jpeg")),
                
                       FadeTransition(
                      opacity: _textanimation,
                      child: Text("Beautiful",style: GoogleFonts.cedarvilleCursive( color: Colors.purple,fontSize: 24,fontWeight: FontWeight.bold),)),
                      
                    
                     FadeTransition(
                      opacity: _textanimation,
                      child: Text("EVERY DAY",style: GoogleFonts.robotoMono( color: Colors.purple,fontSize: 22,fontWeight: FontWeight.bold),)),
                      
                
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}