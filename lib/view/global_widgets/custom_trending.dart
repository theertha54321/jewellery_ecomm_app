import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTrending extends StatelessWidget {
  String title;
  String desc;
  String img;
  Color color;
   CustomTrending({required this.title,required this.desc,required this.img,required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(10),
      
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: GoogleFonts.montserrat(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500)),
                  
                  Text(desc,style: GoogleFonts.montserrat(color: Colors.black,fontSize: 12))
                ],
              ),
              Spacer(),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(img)
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

