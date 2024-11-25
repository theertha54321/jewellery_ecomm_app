import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';
import 'package:jewellery_ecomm_app/view/all_productscreen/all_productscreen.dart';
import 'package:jewellery_ecomm_app/view/book_appoinment/book_appoinment.dart';
import 'package:jewellery_ecomm_app/view/bottom_nav/bottom_nav.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_login_button.dart';
import 'package:jewellery_ecomm_app/view/home_screen/home_screen.dart';

class FindstoreScreen extends StatelessWidget {
  const FindstoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
                      
                      builder: (context)=>BottomNav()
                      )
                    );
          },
          child: Icon(Icons.arrow_back,color: Colors.black,)),
        title: Text("FIND A STORE",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.w600),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              color: Colors.orange.withOpacity(.4),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Icon(Icons.shop_outlined,color: Colors.orange,
        
                  ),
                  SizedBox(height: 20,),
                  Text("Stores in 682035",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 20,fontWeight: FontWeight.w600),),
                   SizedBox(height: 20,),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 16),
                     child: TextFormField(
                     
                           
                           decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                           
                            prefixIcon: Icon(Icons.my_location,color: ColorConstants.purpledark,size: 16,),
                             hintText: "Enter Pincode / City",
                             hintStyle: GoogleFonts.montserrat( color: Colors.black,fontSize: 12),
                             enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(color: Colors.orange,width: 1),
                                 borderRadius: BorderRadius.circular(8)
                         
                               ),
                               border: OutlineInputBorder(
                                 borderSide: BorderSide(color: Colors.orange,width: 1),
                                 borderRadius: BorderRadius.circular(8)
                               ),
                               focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.orange),
                                 borderRadius: BorderRadius.circular(8),
                               
                               ),
                               
                           ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   SizedBox(
                    width: 400,
                    child: Text(
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      "We have 1 stores in this locality,scroll down to view the stores and browse the designs available.",style: GoogleFonts.montserrat(
                      color: Colors.black,fontSize: 14
                    ),),
        
        
                  ),
                  SizedBox(height: 30,)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 9),
              child: Row(
                children: [
                  Text("Showing 1 Stores in ",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.w600),),
                  Text("682035",style: GoogleFonts.montserrat(color: Colors.pink,fontSize: 14,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(8),
              color: Color.fromARGB(255, 198, 244, 212),
              child: 
              Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Rajaji Road",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.w600)),
                          Row(children: [
                            Icon(Icons.star,color: Colors.amber,size: 15,),
                            Text("4.9 ",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10)),
                            CircleAvatar(radius: 1,backgroundColor: ColorConstants.purpledark,),
                            Text(
                              
                              " 652 Google Reviews",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10,decoration: TextDecoration.underline,height: 5,decorationThickness: .8),)
                          ],)
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: ColorConstants.lightpurple
                        ),
                        child: Row(
                          children: [
                            FaIcon(FontAwesomeIcons.telegram,size: 12,color: ColorConstants.purpledark,),
                            SizedBox(width: 5,),
                            Text("1 KM",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10,fontWeight: FontWeight.w500),)
                          ],
                        ),
                      )
        
        
        
        
        
        
                    ],
                  ),
                  Divider(
                  color: ColorConstants.grey.withOpacity(.7),
                  thickness: .7,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    maxLines: 2,
                    "Kalarikkal Building, Near Muthoot FinCrop, Rajaji Road, Off MG Road, Ernakulam, Kochi - 682035",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 12)),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.phone_outlined,color: Colors.pink,size: 15,),
                            Text("9946698111 ",style: GoogleFonts.montserrat(color: Colors.pink,fontSize:12,fontWeight: FontWeight.w600))
                          ],
                        ),
                       Text("|",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 12,)),
                       Row(
                         children: [
                           Icon(Icons.lock_clock_outlined,color: Colors.black,size: 15,),
                           Text("10:30 A.M. to 08:30 P.M.",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 12,))
                         ],
                       )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                    children: [
                      Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: const Color.fromARGB(255, 34, 168, 38)),
                                    color:Colors.white,
                                    
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Center(child: FaIcon(FontAwesomeIcons.whatsapp,color: const Color.fromARGB(255, 36, 154, 39),size: 20,)),
                                ),
                                SizedBox(width: 5,),
                                InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
                      
                      builder: (context)=>BookAppoinment()
                      )
                    );
      },
      child: Container(
        height: 30,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            
            colors:[
              Colors.orange,
              Colors.red
            ]
            )
        ),
        child: Center(child: Text("BOOK A VISIT",style: GoogleFonts.montserrat(color: ColorConstants.white,fontSize: 12,fontWeight: FontWeight.w600),)),
      ),
    ),
    SizedBox(width: 5,),
    Expanded(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
                      
                      builder: (context)=>AllProductscreen()
                      )
                    );
        },
        child: Container(
          height: 30,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              
              colors:[
                const Color.fromARGB(255, 231, 181, 239),
                const Color.fromARGB(255, 195, 159, 202)
                
              ]
              )
          ),
          child: Center(child: Text("VIEW ALL DESIGNS",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 46, 9, 52),fontSize: 12,fontWeight: FontWeight.w600),)),
        ),
      ),
    ),
    

                    ],
                    ),
                  SizedBox(height: 30,)
        
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}