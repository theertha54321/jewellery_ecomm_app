import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/dummy_db/dummy_db.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';
import 'package:jewellery_ecomm_app/view/all_productscreen/all_productscreen.dart';

class CustomCircle extends StatelessWidget {
    String image;
    String text;
   CustomCircle({required this.image,required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProductscreen()));
      },
      child: Column(
        
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage( image),
          ),
          SizedBox(height: 15,),
          Text(text,style: GoogleFonts.montserrat(color: ColorConstants.purple1,fontSize: 10),)
        ],
      ),
    );
  }
}
