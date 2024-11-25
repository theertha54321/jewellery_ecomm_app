import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_inputfield.dart';

class BookAppoinment extends StatefulWidget {

   BookAppoinment({super.key});

  @override
  State<BookAppoinment> createState() => _BookAppoinmentState();
}

class _BookAppoinmentState extends State<BookAppoinment> {
  List<String> dates = [
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "Sat",
    "Sun",
    "Mon",
    "Tue"
  ];

  List dates2 = ["19", "20", "21", "22", "23", "24", "25", "26"];
   List<String> timeSlots = [
    "11:00 AM", "12:00 PM", "1:00 PM", "2:00 PM", "3:00 PM", 
    "4:00 PM", "5:00 PM", "6:00 PM", "7:00 PM", "8:00 PM"
  ];

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
// countrycode function in textformfield
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
                        images[index],
                        style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 15,fontWeight: FontWeight.w600),
                      ),
                      title: Text(countries[index],style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontWeight: FontWeight.w600,fontSize: 12),),
                      trailing: Text(codes[index],style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontWeight: FontWeight.w600,fontSize: 12),),
                      onTap: () {
                        setState(() {
                          selectedFlag = images[index];
                          selectedCode = codes[index];
                        });
                        Navigator.pop(context); 
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
      appBar: AppBar(
        leadingWidth: 200,
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 3,
        leading: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Store Appointment",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 16,fontWeight: FontWeight.w600),),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.close,color: Colors.black,)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Text("Rajaji Road",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.w600),),
              SizedBox(height: 40,),
              Text("Select date",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 12,)),
               SizedBox(height: 10,),
              _buildDateList(),
              SizedBox(height: 40,),
              Text("Select timing",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 12,)),
               SizedBox(height: 10,),
                _buildSelectTiming(),
               SizedBox(height: 10,),
              Text("Contact Details",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 12,)),
               SizedBox(height: 10,),
               CustomInputField(htext: "Enter Name*",),
                SizedBox(height: 10,),
               _buildTextFormFieldWithCountryCodeBottomSheet(context),
                SizedBox(height: 10,),
               CustomInputField(htext: "Email*",),
                SizedBox(height: 40,),
                _buildStoreButton(),
      SizedBox(height: 20,)

          
            ],
          ),
        ),
      ),
    );
  }

  Container _buildStoreButton() {
    return Container(
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          
          colors:[
            Colors.orange,
            Colors.red
          ]
          )
      ),
      child: Center(child: Text("BOOK STORE APPOINTMENT",style: GoogleFonts.montserrat(color: ColorConstants.white,fontSize: 12,fontWeight: FontWeight.w600),)),
    );
  }

  TextFormField _buildTextFormFieldWithCountryCodeBottomSheet(BuildContext context) {
    return TextFormField(
               cursorColor: ColorConstants.grey.withOpacity(.7),
               decoration: InputDecoration(
                 
                 border: OutlineInputBorder(
                   borderSide: BorderSide(color: ColorConstants.grey.withOpacity(.4),width: 1),
                    borderRadius: BorderRadius.circular(12)
                 ),
                  enabledBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: ColorConstants.grey.withOpacity(.4),width: 1),
                         borderRadius: BorderRadius.circular(12)
                 
                       ),
             focusedBorder: OutlineInputBorder(
             borderSide: BorderSide(color: ColorConstants.purpledark),
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
               
             );
  }

  SizedBox _buildSelectTiming() {
    return SizedBox(
              height: 190,
             
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 8/2,mainAxisSpacing: 5,crossAxisSpacing: 5),
               physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                
                itemBuilder: (context,index){
                  bool isSelected = index == selectedIndex;
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex=index;
                      });
                    },
                   child:  Container(
                    height: 20,
                    width: 80,
                                   padding: EdgeInsets.all(8),
                                   decoration: BoxDecoration(
                                     border: Border.all(color:  isSelected?Colors.orange:const Color.fromARGB(255, 235, 217, 163)),
                                     borderRadius: BorderRadius.circular(9),
                                     color: isSelected?Color.fromARGB(255, 234, 206, 115):const Color.fromARGB(255, 235, 217, 163)
                                   ),
                                   child:Center(child: Text(timeSlots[index],style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10),)),
                                 )
                  );
                }
                
                
                ),
            );
  }

  SizedBox _buildDateList() {
    return SizedBox(
              height: 120,
              child: ListView.builder(
                
                
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context,index){
                  bool isSelected = index == selectedIndex;
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex=index;
                      });
                    },
                   child:  Padding(
                     padding: const EdgeInsets.only(right: 5),
                     child: Container(
                      height: 290,
                      width: 80,
                                     padding: EdgeInsets.all(8),
                                     decoration: BoxDecoration(
                                       border: Border.all(color:  isSelected?Colors.orange:const Color.fromARGB(255, 235, 217, 163)),
                                       borderRadius: BorderRadius.circular(9),
                                       color: isSelected?Color.fromARGB(255, 234, 206, 115):const Color.fromARGB(255, 235, 217, 163)
                                     ),
                                     child:Column(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                      Text(dates[index],style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10),),
                      Text(dates2[index],style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 18,fontWeight: FontWeight.w500),)
                                       ],
                                     ),
                                   ),
                   )
                  );
                }
                
                
                ),
            );
  }
}