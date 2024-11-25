import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';

class InputfieldWithLabelandSuffix extends StatelessWidget {
  IconData? sIcon;
  String label;
  String hinttext;
   InputfieldWithLabelandSuffix({this.sIcon,required this.hinttext,required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
          cursorColor: ColorConstants.grey.withOpacity(.7),
          
          decoration: InputDecoration(
           
           suffixIcon: Icon(sIcon,color: ColorConstants.purpledark,),
            label:Text( label),
             labelStyle: GoogleFonts.montserrat( color: ColorConstants.purpledark,fontWeight: FontWeight.w500,fontSize: 12),
            hintText: hinttext, 
            hintStyle: GoogleFonts.montserrat( color: ColorConstants.grey.withOpacity(.4),fontWeight: FontWeight.w500,fontSize: 12),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstants.grey.withOpacity(.4),width: 1),
                borderRadius: BorderRadius.circular(12)
        
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: ColorConstants.grey.withOpacity(.4),width: 1),
                borderRadius: BorderRadius.circular(12)
              ),
              focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: ColorConstants.purpledark),
                borderRadius: BorderRadius.circular(12),
              
              ),
              
          ),
            
    );
  }
}