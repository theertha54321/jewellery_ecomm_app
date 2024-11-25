import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: ColorConstants.grey.withOpacity(.7),
            thickness: .7,
          )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9),
            child: Text("OR",style: GoogleFonts.montserrat( color: ColorConstants.grey.withOpacity(.7),fontSize: 10),),
          ),
          Expanded(
          child: Divider(
            color: ColorConstants.grey.withOpacity(.7),
            thickness: .7,
          )
          ),
      ],
    );
  }
}

