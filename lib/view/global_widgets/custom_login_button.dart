import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';

class CustomLoginButton extends StatelessWidget {
  final String data;
  final List<Color> color;
  const CustomLoginButton({required this.data,required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          
          colors:color
          )
      ),
      child: Center(child: Text(data,style: GoogleFonts.montserrat(color: ColorConstants.white),)),
    );
  }
}

