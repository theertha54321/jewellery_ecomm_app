import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';

class CustomInputField extends StatelessWidget {
  String htext;
 
   CustomInputField({required this.htext, 
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorConstants.grey.withOpacity(.7),
      
      decoration: InputDecoration(
       
        hintText: htext,
        hintStyle: GoogleFonts.montserrat( color: ColorConstants.purpledark,fontWeight: FontWeight.w500,fontSize: 12),
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