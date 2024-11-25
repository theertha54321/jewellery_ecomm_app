import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';

class CustomLog extends StatelessWidget {
  const CustomLog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              
              colors:[
                ColorConstants.darkgreen,
                ColorConstants.green,
                ColorConstants.green,
                ColorConstants.lightgreen
              ]
              )
          ),
          child: Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(FontAwesomeIcons.whatsapp,color: ColorConstants.white,),
              SizedBox(width: 10,),
              Text("SIGNUP WITH WHATSAPP",style: GoogleFonts.montserrat(color: ColorConstants.white),),
            ],
          )),
        ),
        SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 43,
              width: 43,
              
              decoration: BoxDecoration(
                color: Colors.yellow.withOpacity(.3),
                borderRadius: BorderRadius.circular(24)
              ),
              child: Center(child: Image(image: AssetImage("assets/images/google 1 (1).png"))),
            ),
            SizedBox(width: 16,),
            Container(
              height: 43,
              width: 43,
              
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(.1),
                borderRadius: BorderRadius.circular(24)
              ),
              child: Center(child: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,size: 28,)),
            ),
           
          ],
        )
      ],
    );
  }
}

