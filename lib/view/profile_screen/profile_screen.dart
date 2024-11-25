import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jewellery_ecomm_app/view/login_screen/login_screen.dart';

class ProfileScreen extends StatelessWidget {
   List colors =[
    Colors.pink.shade100,
    Colors.yellow.shade200,
    Colors.blue.shade200,
    Colors.purple.shade200

  ];
  List colors1 =[
    Colors.pink.shade500,
    Colors.yellow.shade700,
    Colors.blue.shade700,
    Colors.purple.shade700

  ];

  List text = [
    "Orders",
    "xCLusive Points",
    "Scan at Store",
    "Try At Home"
  ];
  List text1 =[
    "To view the status of your order,please login",
    "Earn & redeem points with every purchase",
    "To discover more about jewellery",
    "Try up to 5 designs,no compulsion of buying"
  ];

  List text2 =[
    "CaratLane PoP!",
    "WishList",
    "eGold",
    "Manage Refund",
    "Payments",
    "Scan History"
  ];

  List text3=[
    "Grow and pay in 9 instalments",
    "Your must loved jewellery",
    "Now you can invest worry free & redeem anytime",
    "Your preferred refund payment method",
    "Payment links generated for you",
    "See the products you liked at store"
  ];

  List text4=[
    "FAQs",
    "Shipping",
    "Exchange",
    "Return",
    "Repair",
    "Rate Us",
    "Share App",
    "Send Feedback",
    "Privacy Policy",
    "Terms of Use"
  ];
  List icon = [
    Icon(Icons.shopping_bag,color: Colors.white,size: 18,),
    Icon(Icons.currency_rupee,color: Colors.white,size: 18,),
    Icon(Icons.scanner,color: Colors.white,size: 18),
    Icon(Icons.home_outlined,color: Colors.white,size: 18)
  ];
  List nextIcon=[
    Icon(Icons.payment_outlined,color: ColorConstants.purpledark,size: 18),
    Icon(Icons.favorite_outline,color: ColorConstants.purpledark,size: 18),
    Icon(Icons.star,color: ColorConstants.purpledark,size: 18),
    Icon(Icons.autorenew_outlined,color: ColorConstants.purpledark,size: 18),
    Icon(Icons.currency_rupee,color: ColorConstants.purpledark,size: 18),
    Icon(Icons.qr_code_outlined,color: ColorConstants.purpledark,size: 18)

  ];

   ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          leadingWidth: 170,
          backgroundColor: ColorConstants.purple1,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15,top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Text("Welcome!",style: GoogleFonts.montserrat( fontSize: 20,fontWeight: FontWeight.w500,color: ColorConstants.white),),
                SizedBox(height: 6,),
                Text("Login to discover xCLusive points,offers & more",style: GoogleFonts.montserrat( fontSize: 10,color: ColorConstants.white))
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 30,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.lightpurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      
                      builder: (context)=>LoginScreen()
                      )
                    );
                  },
                  child: Center(child: Text("Login",style: GoogleFonts.montserrat( color: ColorConstants.purple1,fontWeight: FontWeight.w500),)),
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2,mainAxisSpacing: 8,crossAxisSpacing: 8),
                  itemCount: 4,
                  itemBuilder: (context,index)=>Container(
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                  
                      color: colors[index],
                  
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration:BoxDecoration(
                              color:colors1[index],
                              borderRadius: BorderRadius.circular(5)
                              
                            ),
                            child: Center(child: icon[index]),
                          ),
                          SizedBox(height: 8,),
                          Text(text[index],style: GoogleFonts.montserrat( color: ColorConstants.purple1,fontSize: 16,fontWeight: FontWeight.w600),),
                          Text(text1[index],style: GoogleFonts.montserrat( color: ColorConstants.purple1,fontSize: 12))
                        ],
                      ),
                    ),
                  )
                  
                  ),
              ),
                SizedBox(height: 5,),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context,index)=>
                  Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: ColorConstants.grey.withOpacity(.2),width: 1))
                      ),
                      height: 80,
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color:ColorConstants.lightpurple,
                              
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: nextIcon[index],
                          ),
                          SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(text2[index],style: GoogleFonts.montserrat( color: ColorConstants.purple1,fontSize: 16,fontWeight: FontWeight.w500),),
                              Text(text3[index],style: GoogleFonts.montserrat( color: ColorConstants.grey,fontSize: 10),)
                            ],
                          ),
                          Spacer(),
                             Icon(Icons.keyboard_arrow_right)
                            
                        ],
                      ),
                    ),
                  )
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context,index)=>Container(
                  height: 80,
                  color: ColorConstants.lightpurple.withOpacity(.4),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            FaIcon(Icons.tag,color: ColorConstants.purple1),
                            Text("Your Offers",style: GoogleFonts.montserrat( color: ColorConstants.purple1,fontSize: 14,fontWeight: FontWeight.w500),)
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Text("To view your offers,",style: GoogleFonts.montserrat( color: ColorConstants.purple1,fontSize: 10)),
                            SizedBox(width: 5,),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                      
                               builder: (context)=>LoginScreen()
                      )
                    );
                              },
                              child: Text("LOGIN",style: GoogleFonts.montserrat( color: ColorConstants.purple,fontSize: 14),))
                          ],
                        ),
                      ],
                    ),
                  ),
        
                  )
                  ),
                  ListView.builder(
                    itemCount: 10,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context,index)=>
                    Container(
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: ColorConstants.grey.withOpacity(.2),width: 1))
                      ),
                      height:80 ,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(text4[index],style: GoogleFonts.montserrat( color: ColorConstants.purple1),),
                          ],
                        ),
                      ))
                    
                    ),
                    SizedBox(height: 29,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color:ColorConstants.lightpurple,
                                  
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Icon(Icons.call,color: ColorConstants.purple1,),
                              ),
                              Text("Call Us",style: GoogleFonts.montserrat( color: ColorConstants.purple1,fontSize: 10),)
                          ],
                        ),
                          SizedBox(width: 66,),
                          Column(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color:ColorConstants.lightpurple,
                                  
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Icon(Icons.chat_bubble,color: ColorConstants.purple1,),
                              ),
                              Text("Chat",style: GoogleFonts.montserrat( color: ColorConstants.purple1,fontSize: 10),)
                            ],
                          ),
                          SizedBox(width: 66,),
                          Column(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color:ColorConstants.lightpurple,
                                  
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: FaIcon(FontAwesomeIcons.whatsapp,color: ColorConstants.purple1)),
                              ),
                              Text("Whatsapp",style: GoogleFonts.montserrat( color: ColorConstants.purple1,fontSize: 10),)
                            ],
                          ),
                          SizedBox(width: 66,),
                          Column(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color:ColorConstants.lightpurple,
                                  
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Icon(Icons.email_rounded,color: ColorConstants.purple1,),
                              ),
                              Text("Email",style: GoogleFonts.montserrat( color: ColorConstants.purple1,fontSize: 10),)
                            ],
                          ),
                          
                      ],
                    ),
                    SizedBox(height: 70,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                      
                      builder: (context)=>LoginScreen()
                      )
                    );
                      },
                      child: Container(
                        height: 25,
                        width: 90,
                        decoration:BoxDecoration(
                          color: ColorConstants.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: ColorConstants.purple)
                        ) ,
                        child: Center(child: Text("Login",style: GoogleFonts.montserrat( color: ColorConstants.purple1),)),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Text("APP VERSION 6.2.52",style: GoogleFonts.montserrat( color: ColorConstants.grey.withOpacity(.6),fontSize: 9,),),
                    SizedBox(height: 90,)
            ],
          ),
        ),
      ),
    );
  }
}