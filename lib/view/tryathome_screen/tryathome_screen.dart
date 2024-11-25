import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_login_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TryathomeScreen extends StatefulWidget {

   TryathomeScreen({super.key});

  @override
  State<TryathomeScreen> createState() => _TryathomeScreenState();
}

class _TryathomeScreenState extends State<TryathomeScreen> {
  
  PageController controller = PageController();
int selectedIndex=0;
   String selectedFlag = "🇮🇳";
  String selectedCode = "+91";


  List images = [
"🇮🇳", // India
  "🇦🇫", // Afghanistan
  "🇬🇧", // United Kingdom
  "🇨🇳", // China
  "🇳🇵", // Nepal
  "🇬🇪", // Georgia
  "🇩🇪", // Germany
  "🇵🇱", // Poland
  "🇨🇭", // Switzerland
  "🇷🇺" 

];

List countries = [
"India",
"Afghanisthan",
"United Kingdom",
"China",
"Nepal",
"Georgia",
"Germany",
"Poland",
"Switzerland",
"Russia"

];

List codes = [
"+91",
"+41",
"+21",
"+13",
"+434",
"+213",
"+345",
"+34",
"+287",
"+910"

];

  List text1 =[
    "Pick your favourite designs",
    "Book your free appointment",
    "Try On at your leisure",
    "Buy only if you love"
  ];

  List text2 =[
    "Top five that stole your heart",
    "At your choosen date,place & time",
    "Let us bring the store to you",
    "There's no compulsion to buy"
  ];
  void _showCountryCodeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      
      
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20,left:16 ),
                  child: Text(
                    "Search Country Code",
                    style: GoogleFonts.montserrat(
                      color: ColorConstants.purpledark,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child:  TextFormField(
      cursorColor: ColorConstants.grey.withOpacity(.7),
      
      decoration: InputDecoration(
       
       prefixIcon: Icon(Icons.search,size: 15,color: ColorConstants.purpledark,),
      hintText: "Type country name or code",
        hintStyle: GoogleFonts.montserrat( color: ColorConstants.purpledark,fontWeight: FontWeight.w600,fontSize: 12),
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
    ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: countries.length,
                    itemBuilder: (context, index) => ListTile(
                      leading: Text(
                        images[index], // Use emoji as a flag
                        style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 15,fontWeight: FontWeight.w600),
                      ),
                      title: Text(countries[index],style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontWeight: FontWeight.w600,fontSize: 12),),
                      trailing: Text(codes[index],style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontWeight: FontWeight.w600,fontSize: 12),),
                      onTap: () {
                        setState(() {
                          selectedFlag = images[index];
                          selectedCode = codes[index];
                        });
                        Navigator.pop(context); // Close the bottom sheet
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
               
                children: [
                  // Stack to overlay the image and rounded container
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/3387577/pexels-photo-3387577.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  
                  // Rounded White Container
                  Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 216, 192, 243),
                    borderRadius: BorderRadius.circular(32)
                       // Rounded top corners
                    
                  ),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Try Jewellery at Home, for Free",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.purpledark,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Find up to 5 designs to try in the comfort of your home at your convenience.",
                        style: GoogleFonts.montserrat(fontSize: 16, color:  ColorConstants.purpledark,fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          suffixIcon: Icon(Icons.search,size: 16,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: ColorConstants.lightpurple),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                          
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) => 
                           Container(
                                    height: 20,
                                    width: 190,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      gradient: LinearGradient(
                                        
                                        colors:[
                          const Color.fromARGB(255, 231, 181, 239),
                          const Color.fromARGB(255, 195, 159, 202),
                          ColorConstants.purple
                          
                                        ]
                                        )
                                    ),
                                    child: Center(child: Text("Rings",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 46, 9, 52),fontSize: 12,fontWeight: FontWeight.w600),)),
                                  ),
                        ),
                      ),
                      SizedBox(height: 20),
                       
                    ]
                  ),
                    ),
                    SizedBox(height: 20),
                    Text(
                        
                        "How it Works?",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.purpledark,
                        ),
                        
                      
                    ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 350,
                    child: PageView.builder(
                      controller: controller,
                      itemCount: 4,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context,index)=>Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 242, 185, 185),
                        
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(text1[index],style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 18,fontWeight: FontWeight.bold),),
                              SizedBox(height: 9,),
                              Text(text2[index],style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12))
                            ],
                          ),
                    )),
                  ),
                  
                  SizedBox(height: 20),
                  Text(
                        "Give her the Gift of Choice",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.purpledark,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 350,
                        
                        child: Text(
                          maxLines: 2,
                          "Book a FREE jewellery trial at home, and let your loved ones choose their gifts!",
                          style: GoogleFonts.montserrat(fontSize: 16, color:  ColorConstants.purpledark,fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 228, 231, 141)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsetsDirectional.symmetric(horizontal: 18),
                              child: Text(
                                                
                                                "Browse Designs",
                                                style: GoogleFonts.montserrat(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: ColorConstants.purpledark,
                                                ),
                                                
                                              
                                            ),
                            ),
                     SizedBox(height: 20),
                     SizedBox(
                      height: 300,
                      
                       child: GridView.builder(
                                     
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 6/3),
                                 itemCount: 6, 
                                 scrollDirection: Axis.horizontal,
                                 itemBuilder: (context,index)=>
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Stack(
                        children: [
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Container(
                           
                            height: 170,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://images.pexels.com/photos/230291/pexels-photo-230291.jpeg?auto=compress&cs=tinysrgb&w=600")),
                              color: Colors.white,borderRadius: BorderRadius.circular(7)),
                                           ),
                         ),
                         Positioned(
                          right: 23,
                          top: 18,
                           child: Icon(Icons.favorite_border_outlined,color: ColorConstants.purpledark,),
                         )
                        ]
                                     ),
                                     SizedBox(height: 5,),
                                     Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text("Rs.18,790",style:  GoogleFonts.montserrat(color: Colors.grey.shade600,fontSize: 12,fontWeight: FontWeight.w500),),
                                     ),
                                     SizedBox(height: 5,),
                                     Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text("Glowy Diamond Vanki Ring",style:  GoogleFonts.montserrat(color: Colors.grey.shade600,fontSize: 12,fontWeight: FontWeight.w500),),
                                     ),
                                     SizedBox(height: 5,),
                                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child:Container(
                                    height: 20,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: ColorConstants.purple),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white
                                    ),
                                    child: Center(child: Text("TRY AT HOME",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10,fontWeight: FontWeight.w600),)),
                                  ),
                                     ),
            
                                   ],
                                 )
                                 
                                 ),
                     ),
                     
                     SizedBox(
                      height: 300,
                      
                       child: GridView.builder(
                                     
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 6/3),
                                 itemCount: 6, 
                                 scrollDirection: Axis.horizontal,
                                 itemBuilder: (context,index)=>
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Stack(
                        children: [
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Container(
                           
                            height: 170,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://images.pexels.com/photos/265856/pexels-photo-265856.jpeg?auto=compress&cs=tinysrgb&w=600")),
                              color: Colors.white,borderRadius: BorderRadius.circular(7)),
                                           ),
                         ),
                         Positioned(
                          right: 23,
                          top: 18,
                           child: Icon(Icons.favorite_border_outlined,color: ColorConstants.purpledark,),
                         )
                        ]
                                     ),
                                     SizedBox(height: 5,),
                                     Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text("Rs.23980",style:  GoogleFonts.montserrat(color: Colors.grey.shade600,fontSize: 12,fontWeight: FontWeight.w500),),
                                     ),
                                     SizedBox(height: 5,),
                                     Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text("Divine evil eye diamond ring",style: GoogleFonts.montserrat(color: Colors.grey.shade600,fontSize: 12,fontWeight: FontWeight.w500),),
                                     ),
                                     SizedBox(height: 5,),
                                    
                                     
                                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child:Container(
                                    height: 20,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: ColorConstants.purple),
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white
                                    ),
                                    child: Center(child: Text("TRY AT HOME",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10,fontWeight: FontWeight.w600),)),
                                  ),
                                     ),
                                   ],
                                 )
                                 
                                 ),
                     ),
                      
              
                          ],
                        ),
                      ),
                          SizedBox(height: 20,),
                      Text(
                        "Give her the Gift of Choice",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.purpledark,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 350,
                        
                        child: Text(
                          maxLines: 2,
                          "Enjoy the Best of Shopping at Home,Together with your Family",
                          style: GoogleFonts.montserrat(fontSize: 16, color:  ColorConstants.purpledark,fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 4, 12, 94)
                          ),
                          child: Center(child: Text("Rings",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 215, 157, 32)
                          ),
                          child: Center(child: Text("Necklaces",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 6, 73, 9)
                          ),
                          child: Center(child: Text("Earrings",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 1, 47, 18)
                          ),
                          child: Center(child: Text("Bracelets",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                      SizedBox(height: 25),
                      Text(
                        "Ensure the Perfect Fit",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.purpledark,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        width: 350,
                        
                        child: Text(
                          maxLines: 2,
                          "Try stunning designs at home, & discover your perfect match!",
                          style: GoogleFonts.montserrat(fontSize: 16, color:  ColorConstants.purpledark,fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 14,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             SizedBox(height: 24,),
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 16),
                               child: Text(
                                                 "1200+ Unforgettable Moments",
                                                 style: GoogleFonts.montserrat(
                                                   fontSize: 16,
                                                   fontWeight: FontWeight.bold,
                                                   color: ColorConstants.purpledark,
                                                 ),
                                                 textAlign: TextAlign.center,
                                          ),
                             ),
                                        SizedBox(height: 14,),
                                        SizedBox(
                        height: 135,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context,index)=>Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              
                              padding: EdgeInsets.all(8),
                              height: 60,
                              width: 440,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 220, 202, 241),
                              borderRadius: BorderRadius.circular(9)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Alvira Khan",style: GoogleFonts.montserrat(
                                                   fontSize: 12,
                                                   fontWeight: FontWeight.bold,
                                                   color: ColorConstants.purpledark,
                                                 ),),
                                   Spacer(),
                                    Text("Mumbai",style: GoogleFonts.montserrat(
                                                   fontSize: 12,
                                                   fontWeight: FontWeight.bold,
                                                   color: ColorConstants.purpledark,
                                                 ),)
                                    
                                    
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text(style: GoogleFonts.montserrat(
                                                   fontSize: 10,
                                                   
                                                   color: ColorConstants.purpledark,
                                                 ),
                                      textAlign: TextAlign.left,
                                      "I absolutely love the CaratLane app. The interface is very userfriendly, and the collection is stunning with so many designs to choose from."),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    RatingBar.readOnly(filledIcon: Icons.star, 
                                    emptyIcon: Icons.star_border,
                                    initialRating: 5,
                                     maxRating: 5,
                                     size: 16,
                                     filledColor: ColorConstants.purple1,
                                    )
                                  ],
                                )
                                   
                              ],
                            ),
                          ),
                          )),
                                           ),
                                           SizedBox(
                        height: 135,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context,index)=>Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              
                              padding: EdgeInsets.all(8),
                              height: 60,
                              width: 440,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 220, 202, 241),
                              borderRadius: BorderRadius.circular(9)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Alvira Khan",style: GoogleFonts.montserrat(
                                                   fontSize: 12,
                                                   fontWeight: FontWeight.bold,
                                                   color: ColorConstants.purpledark,
                                                 ),),
                                   Spacer(),
                                    Text("Mumbai",style: GoogleFonts.montserrat(
                                                   fontSize: 12,
                                                   fontWeight: FontWeight.bold,
                                                   color: ColorConstants.purpledark,
                                                 ),)
                                    
                                    
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Text(style: GoogleFonts.montserrat(
                                                   fontSize: 10,
                                                   
                                                   color: ColorConstants.purpledark,
                                                 ),
                                      textAlign: TextAlign.left,
                                      "I absolutely love the CaratLane app. The interface is very userfriendly, and the collection is stunning with so many designs to choose from."),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    RatingBar.readOnly(filledIcon: Icons.star, 
                                    emptyIcon: Icons.star_border,
                                    initialRating: 5,
                                     maxRating: 5,
                                     size: 16,
                                     filledColor: ColorConstants.purple1,
                                    )
                                  ],
                                )
                                   
                              ],
                            ),
                          ),
                          )),
                                           )
                          ],
                        ),
                      ),
            
              
                 
                ],
              ),
            ),
          ),
          Container(
            height: 50,
           color: Colors.white,
            child:ElevatedButton(
              onPressed: (){
                showModalBottomSheet(context: context, 
                builder: (context)=>Container(
                  
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      
                      SizedBox(height: 20,),
                      Text("Try Jewellery at Home , for Free",style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: ColorConstants.purpledark,
                                            ),),
                                             Text(
                                            "Our Consultant will call back and asist you in booking a Home Appointment or any queries.",
                                            style: GoogleFonts.montserrat(fontSize: 16, color:  ColorConstants.purpledark,fontWeight: FontWeight.w500),
                                            textAlign: TextAlign.center,
                                        ),
                                        SizedBox(height: 30,),
                                        Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 16),
                                       child: TextFormField(
                                       
                                               
                                               decoration: InputDecoration(
                      fillColor: ColorConstants.lightpurple,
                      filled: true,
                                               
                      prefixIcon: Icon(Icons.my_location,color: ColorConstants.purpledark,size: 16,),
                       hintText: "Enter Pincode*",
                       hintStyle: GoogleFonts.montserrat( color: Colors.black,fontSize: 12),
                       
                       enabledBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: ColorConstants.lightpurple),
                           borderRadius: BorderRadius.circular(12)
                                             
                         ),
                         border: OutlineInputBorder(
                           borderSide: BorderSide(color: ColorConstants.lightpurple),
                           borderRadius: BorderRadius.circular(12)
                         ),
                         focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: ColorConstants.lightpurple),
                           borderRadius: BorderRadius.circular(12),
                         
                         ),
                         
                                               ),
                                       ),
                                     ),
                                     SizedBox(height: 10,),
                                     Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 16),
                                       child: TextFormField(
                                        
                                                        cursorColor: ColorConstants.grey.withOpacity(.7),
                                                        decoration: InputDecoration(
                                                          fillColor: ColorConstants.lightpurple,
                                                          filled: true,
                                                          border: OutlineInputBorder(
                                                            borderSide: BorderSide(color: ColorConstants.lightpurple),
                                                             borderRadius: BorderRadius.circular(12)
                                                          ),
                                                           enabledBorder: OutlineInputBorder(
                                                                borderSide: BorderSide(color: ColorConstants.lightpurple),
                                                                  borderRadius: BorderRadius.circular(12)
                                                          
                                                                ),
                                                      focusedBorder: OutlineInputBorder(
                                                     borderSide: BorderSide(color: ColorConstants.lightpurple),
                                                       borderRadius: BorderRadius.circular(12),
                                                                
                                                                ),
                                                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                                                          prefixIcon:GestureDetector(
                                                            onTap: (){
                                                              _showCountryCodeBottomSheet(context);
                                                            },
                                                            child: Container(
                                                              padding: EdgeInsets.symmetric(horizontal: 15),
                                                              child: Row(
                                                                mainAxisSize: MainAxisSize.min,
                                                      
                                                                children: [
                                                                  Text(selectedFlag,style: GoogleFonts.montserrat( fontSize: 12,color: ColorConstants.purpledark,fontWeight: FontWeight.w600),),
                                                                  SizedBox(width: 4,),
                                                                  Text(selectedCode,style: GoogleFonts.montserrat( fontSize: 12,color: ColorConstants.purpledark,fontWeight: FontWeight.w600),),
                                                                  Icon(Icons.arrow_drop_down,size: 14,color: ColorConstants.purpledark),
                                                                 
                                                      
                                                              ],),
                                                      
                                                            ),
                                                          ),
                                                          prefixIconConstraints: BoxConstraints(minWidth: 0,minHeight: 0)
                                                        ),
                                                        
                                                      ),
                                     ),
                                     SizedBox(height: 30,),
                                     Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 16),
                                       child: CustomLoginButton(data: "REQUEST CALL BACK", color: [ColorConstants.purple1,ColorConstants.purple]),
                                     ),
                    SizedBox(height: 20,)
                    ],
                  ),
                )
                );
              },
              child: CustomLoginButton(data: "BOOK TRY AT HOME", color:[ColorConstants.purple,ColorConstants.purple1])) ,
          )
        ],
      ),
      
    );
  }
}