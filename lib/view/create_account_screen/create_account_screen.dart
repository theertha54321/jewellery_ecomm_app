import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';
import 'package:jewellery_ecomm_app/utils/image_constants.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_divider.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_inputfield.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_log.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_login_button.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_password.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_policy.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/input_label_suffix.dart';

class CreateAccountScreen extends StatefulWidget {
  
  
   CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {

 String selectedFlag = "🇮🇳";
  String selectedCode = "+91";
String? gender;
bool isChecked =true;

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
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                  height: 50,
                  width: 50,
                  image: AssetImage(ImageConstants.applogo)),
                SizedBox(height: 20,),
                Text("Signup with CaratLane",style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w600,color:ColorConstants.purpledark),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Text(
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    "Unlock best prices and become an insider for our exclusive launches & offers.",
                  style: GoogleFonts.montserrat(fontSize: 12,color:ColorConstants.purpledark),),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomLog(),
                ),
                SizedBox(height: 27,),
                CustomPolicy(),
                SizedBox(height: 24,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomDivider(),
                ),
                SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    cursorColor: ColorConstants.grey.withOpacity(.7),
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.montserrat( color: ColorConstants.purpledark,fontWeight: FontWeight.w600,fontSize: 12),
                      hintText: "Mobile",
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
                    
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InputfieldWithLabelandSuffix(hinttext: "Enter Email",label: "Enter Email",),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 220,
                        child: InputfieldWithLabelandSuffix(hinttext: "First Name",label: "First Name",)),
                      Spacer(),
                      Container(
                        width: 220,
                        child: InputfieldWithLabelandSuffix(hinttext: "Last Name",label: "Last Name",))
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InputfieldWithLabelandSuffix(hinttext: "Password", label: "Password",sIcon: Icons.visibility_off,),
                ),
                 SizedBox(height: 5,),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Row(
                     children: [
                       PasswordDetails(text: "8 Chrs"),
                       Spacer(),
                       PasswordDetails(text: "1 Uppercase"),
                       Spacer(),
                       PasswordDetails(text: "1 Uppercase"),
                       Spacer(),
                       PasswordDetails(text: "1 Symbol"),
                       Spacer(),
                       PasswordDetails(text: "1 Number"),

                     ],
                   ),
                 ),
                 SizedBox(height: 20),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: InputfieldWithLabelandSuffix(hinttext: "Confirm Password", label: "Confirm Password",sIcon: Icons.visibility_off,),
                 ),
                 SizedBox(height: 30),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Row(
                     children: [
                       Row(
                         children: [
                          
                          
                           Transform.scale(
                            scale: .7,
                             child: Radio(value: "Male", groupValue: gender, onChanged: (value){
                              gender = value;
                              setState(() {
                                
                              });
                             }),
                           ),
                           SizedBox(width: 4,),
                            Text("Male",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12)),
                         ],
                       ),
                     SizedBox(width: 8),
                   Row(
                     children: [
                       
                     
                       Transform.scale(
                        scale: .7,
                         child: Radio(value: "Female", groupValue: gender, onChanged: (value){
                          gender = value;
                          setState(() {
                            
                          });
                         }),
                       ),
                        SizedBox(width: 4,),
                        Text("Female",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12),),

                     ],
                   ),
                   SizedBox(width: 8),
                   Row(
                     children: [
                       
                      
                       Transform.scale(
                        scale: .7,
                         child: Radio(
                          
                          value: "I don't want to specify", groupValue: gender, onChanged: (value){
                          gender = value;
                          setState(() {
                            
                          });
                         }),
                       ),
                      SizedBox(width: 4,),
                       Text("I don't want to specify",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12)),
                     ],
                   ),
                     ]),
                 ),
                 SizedBox(height: 30,),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    height: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromARGB(255, 164, 235, 142)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          value:isChecked, onChanged: (value){
                          isChecked = value!;
                          setState(() {
                            
                          });
                        }),
                        SizedBox(width: 4,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Opt for whatsapp support",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontWeight: FontWeight.w600,fontSize: 12),),
                            SizedBox(height: 5,),
                            Text(
                              
                              '''We will be sharing delivery & precious order related 
communication &certification.Also provide you with
an interactive whatsapp support''',style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10),),


                          ],
                        ),
                        Spacer(),
                        Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color:const Color.fromARGB(255, 229, 249, 230),
                                  
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: FaIcon(FontAwesomeIcons.whatsapp,color: const Color.fromARGB(255, 17, 220, 38))),
                              ),
                      ],
                    ),
                    
                   ),
                 ),
                 SizedBox(height: 30,),
                 CustomPolicy(),
                 SizedBox(height: 20,),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: CustomLoginButton(data: "SIGN ME UP", color: [
                    Colors.pink.shade400,
                               ColorConstants.purple,
                               ColorConstants.purple,
                               ColorConstants.purple1,
                               ColorConstants.purpledark
                   ]),
                 ),
                 
                 SizedBox(height: 15,),
                 Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10)),
                SizedBox(width: 2,),
                InkWell(
                  onTap: (){
                   Navigator.pop(context);
                  },
                  child: Text("Login",style: GoogleFonts.montserrat(color: ColorConstants.purple,fontSize: 10,fontWeight: FontWeight.w500),))
              ],
            ),
            SizedBox(height: 60,)


            ],
          ),
        ),
      ),
    );
  }
}

