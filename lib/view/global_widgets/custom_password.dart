import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';

class PasswordDetails extends StatelessWidget {
  String text;
   PasswordDetails({required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       CircleAvatar(radius: 4),
        SizedBox(width: 8),
        Text(text,style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10),)
     ],
    );
  }
}

