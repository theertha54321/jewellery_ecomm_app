import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';

class CustomPolicy extends StatelessWidget {
  const CustomPolicy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    Text("By Continuing you agree to Caratlane's",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 12)),
      
    Row(
     mainAxisAlignment: MainAxisAlignment.center,
      children: [
                  Text("Terms and Conditions",style: GoogleFonts.montserrat(color: ColorConstants.purple,fontSize: 12)),
     
    SizedBox(width: 3),
    Text("&"),
    SizedBox(width: 3),
      
    
      
    
    Text("Privacy Policy",style: GoogleFonts.montserrat(color: ColorConstants.purple,fontSize: 12)),
      ]
    ),
      ]
    );
  }
}

