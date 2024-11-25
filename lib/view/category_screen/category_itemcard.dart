import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';
import 'package:jewellery_ecomm_app/view/all_productscreen/all_productscreen.dart';

class CustomCategoryCard extends StatelessWidget {
  String tx;
  String im;
   CustomCategoryCard({required this.tx,required this.im,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProductscreen()));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        height: 50,
       width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 1
            )
          ]
        ),
        child: Row(
          children: [
            Container(
              
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(4),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(im)
        )
      ),
                    ),
                    SizedBox(width: 10,),
                    Text(tx,style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10)),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios_outlined,color: ColorConstants.purple,size: 13,)
          ],
        ),
      ),
    );
  }
}