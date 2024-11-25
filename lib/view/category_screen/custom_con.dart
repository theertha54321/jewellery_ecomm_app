import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';
import 'package:jewellery_ecomm_app/view/all_productscreen/all_productscreen.dart';

class CustomConButton extends StatelessWidget {
  Color color1;
  Color color2;
  Color color3;
  
  String text1;
  String text2;
  IconData icon;
   CustomConButton({required this.color1,required this.color2,required this.color3,required this.text1,required this.text2,
  required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: 
            [
              color1,
              color2,
              color3,
             
            ]
          ),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7)
              ),
              child: Icon(icon),
            ),
            SizedBox(width: 8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1,style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12,fontWeight: FontWeight.w600),),
                SizedBox(height: 5,),
                Text(text2,style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w600),),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}

