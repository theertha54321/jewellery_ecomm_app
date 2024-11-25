import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';
import 'package:jewellery_ecomm_app/view/all_productscreen/all_productscreen.dart';

class ProDetails extends StatelessWidget {
  List colors = [
    Color.fromARGB(255, 244, 159, 3),
    Color.fromARGB(255, 239, 188, 86),
    const Color.fromARGB(255, 235, 151, 179),
    const Color.fromARGB(255, 223, 152, 236)
  ];
final postcardData = [
              {
                "title": "Add Postcards by CaratLane",
                "description":
                    "Add a video / image with heartfelt message to your CaratLane ring and make your gift unique with Postcards",
                "buttonText": "Know More",
              },
              {
                "title": "Old Gold Exchange Program",
                "description":
                    "Exchange your old gold jewelry and save big on your new CaratLane designs.",
                "buttonText": "Know More",
              },
              {
                "title": "Exclusive Gift Wrapping",
                "description":
                    "Make your gifts even more special with our premium gift wrapping service.",
                "buttonText": "Know More",
              },
              {
                "title": "Jewelry Care Tips",
                "description":
                    "Learn how to take care of your jewelry to keep it shining for years.",
                "buttonText": "Know More",
              },
            ];
            String image;
            String rating;
            String name;
            String price;
   ProDetails({super.key,required this.image,required this.name,required this.price,required this.rating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(
        
         children:[
          
          Positioned(
            bottom: 0,
            right: 3,
            child: FloatingActionButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            backgroundColor: Color.fromARGB(255, 55, 9, 64),
            onPressed: (){},
            child: Icon(Icons.phone_outlined,color: Colors.white,),
            ),
          )
         ],
       ),
     appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon:  Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>AllProductscreen()));
          },
        ),
        title:  Text(
          name,
          style: GoogleFonts.montserrat(fontSize: 12,color: ColorConstants.purpledark,fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon:  Icon(Icons.share,color: ColorConstants.purpledark,),
            onPressed: () {},
          ),
          IconButton(
            icon:  Icon(Icons.favorite_border,color: ColorConstants.purpledark,),
            onPressed: () {},
          ),
          IconButton(
            icon:  Icon(Icons.shopping_cart_outlined,color: ColorConstants.purpledark,),
            onPressed: () {},
          ),
          
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            _buildPassDatas(),
           SizedBox(height: 16),
          
           
                  _buildPriceDetails(),
             
             SizedBox(height: 16),
            
            _buildDeliveryDetails(),
                  SizedBox(height: 30,),
                  _buildCustomize(),
             SizedBox(height: 24),

            
             _buildSizeGuide(),
            SizedBox(height: 20,),
            _buildCaratlaneInfos(),
            SizedBox(height: 16),
              _buildContact(),
              SizedBox(height: 36),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: _buldProductDetails(),
                  ),
                ],
              ),
              SizedBox(height: 30,),
          _buildCustomerReviews(),
        SizedBox(height: 20,)
          ],  
        ),
      ),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                  backgroundColor: ColorConstants.green,
                  
                  padding:  EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  
                },
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.video_call,color: Colors.white,size: 16,),
                   SizedBox(width: 3,),
                    Text("LIVE VIDEO CALL",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),),
                  ],
                ),
              ),
            ),
             SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8) ),
                  backgroundColor: Colors.purple,
                 
                  padding:  EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  
                },
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_cart,color: Colors.white,size: 16,),
                     SizedBox(width: 3,),
                    Text("ADD TO CART",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    
  }

  Padding _buildCustomerReviews() {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Customer Reviews",
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Text(
                    "5.0",
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.purple,
                    ),
                  ),
                  Icon(Icons.star, size: 16, color: Colors.purple),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Text(
          "Based on 547 Reviews & Ratings",
          style: GoogleFonts.montserrat(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: Colors.black54,
          ),
        ),
        SizedBox(height: 16),

        
        Center(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.purple),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            ),
            onPressed: () {
           
            },
            child: Text(
              "WRITE A REVIEW",
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.purple,
              ),
            ),
          ),
        ),
        SizedBox(height: 4),
        Center(
          child: Text(
            "Write a review and upload a picture of your jewellery",
            style: GoogleFonts.montserrat(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 16),

        
        Text(
          "What Customers Like",
          style: GoogleFonts.montserrat(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            _buildHighlightChip("DESIGN"),
            _buildHighlightChip("SIZE/FIT"),
            _buildHighlightChip("QUALITY"),
            _buildHighlightChip("DELIVERY"),
            _buildHighlightChip("PACKAGING"),
          ],
        ),
        SizedBox(height: 16),

        
        Text(
          "Images by Customers",
          style: GoogleFonts.montserrat(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 16),

        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Showing 3 out of 547",
              style: GoogleFonts.montserrat(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
            ),
            Text(
              "1y",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        Divider(color: Colors.black12, height: 16),

       
        _buildReviewCard(),
        SizedBox(height: 30,),
        Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 242, 204, 229)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsetsDirectional.symmetric(horizontal: 18),
                            child: Text(
                                              
                                              "Similar Products",
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
                                   
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio:8/8,),
                               itemCount: 12, 
                               scrollDirection: Axis.horizontal,
                               itemBuilder: (context,index)=>
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 
                                 children: [
                                   Stack(
                      children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 16),
                         child: Container(
                         
                          height: 110,
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
                                   SizedBox(height: 2,),
                                   
                                   Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text("Rs.18,790",style:  GoogleFonts.montserrat(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w500),),
                                   ),
                                   SizedBox(height: 2,),
                                   Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text("Glowy Diamond Ring",style:  GoogleFonts.montserrat(color: Colors.black,fontSize: 10,fontWeight: FontWeight.w500),),
                                   ),
                                   
          
                                 ],
                               )
                               
                               ),
                   ),
                   
                  
                    
                      SizedBox(height: 20,)
                        ],
                      ),
                    ),
      ],
    ),
  );
  }

  Column _buldProductDetails() {
    return Column(
                        
                        children: [
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Product Details",style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.bold,color: ColorConstants.purpledark),),
                              Text(
                  "SKU-JR08757-1RP900",
                  style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.bold,color: ColorConstants.purple)
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                  
                         
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.4),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.precision_manufacturing,
                            color: Colors.purple,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "14 KT Rose Gold",
                            style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w600,color: ColorConstants.purpledark)
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        "1.661 g",
                        style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.grey.shade600),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Width - 6.20 mm",
                        style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.grey.shade600),
                      ),
                      Text(
                        "Height - 2.35 mm",
                        style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  
                  Container(
                     width: 1,
                    color: Colors.pink,
                   
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.diamond_outlined,
                            color: Colors.purple,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "0.056 ct",
                           style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w600,color: ColorConstants.purpledark)
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        "IJ-SI",
                        style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.grey.shade600),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Setting - Prong",
                        style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.grey.shade600),
                      ),
                      Text(
                        "Total Number - 12",
                        style: GoogleFonts.montserrat(fontSize: 10,fontWeight: FontWeight.w600,color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16),
                  
                          
                          SizedBox(
                            height: 30,
                            width: 160,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.white,
                               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                               ),
                               side: BorderSide(color: Colors.pink),
                  padding: EdgeInsets.all(10),
                              ),
                              onPressed: () {
                  
                              },
                              child: Center(
                                child: Text(
                                                "View Price Breakup",
                                                style: GoogleFonts.montserrat(fontSize: 13,fontWeight: FontWeight.w600,color: ColorConstants.purpledark),
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
  }

  Column _buildContact() {
    return Column(
              children: [
                Center(child: Text("Contact us for further assistances",style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.bold))),
              
             SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    
                  },
                  icon: Icon(Icons.call),
                  label: Text("Call", style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12,fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(iconColor: Colors.purple),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                   
                  },
                  icon: Icon(Icons.chat),
                  label: Text("Chat", style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12,fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(iconColor: Colors.purple),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                   
                  },
                  icon: FaIcon(FontAwesomeIcons.whatsapp),
                  label: Text("WhatsApp", style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12,fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(iconColor: Colors.purple),
                ),
              ],
            ),
              ]);
  }

  SizedBox _buildCaratlaneInfos() {
    return SizedBox(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                     
                      itemCount: 4, 
                      itemBuilder: (context, index)=>Padding(
              padding:EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: 350,
                height: 150,
                padding:EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: colors[index]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          postcardData[index]["title"]!,
                          style: GoogleFonts.montserrat(fontSize: 16,fontWeight: FontWeight.bold,color: ColorConstants.purpledark)
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            icon:Icon(Icons.arrow_forward,
                                color: ColorConstants.purpledark),
                            onPressed: () {
                              
                            },
                          ),
                        ),
                      ],
                    ),
                   SizedBox(height: 8),
                   
                    Text(
                      postcardData[index]["description"]!,
                     style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.black)
                    ),
                   SizedBox(height: 8),
                   
                    Text(
                      postcardData[index]["buttonText"]!,
                      style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.purple)
                    ),
                  ],
                ),
              ),
            ),
            ),
          );
  }

  Column _buildSizeGuide() {
    return Column(
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 16),
                 child: Text(
                  "Select Size",
                  style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black)
                             ),
               ),
             
           SizedBox(height: 8),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    padding:  EdgeInsets.all(8),
                
                    decoration: BoxDecoration(
                      color: ColorConstants.lightpurple,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        Text(
                          "12 (51.8 mm) - Ready to Ship",
                          style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w600,color: ColorConstants.purpledark)
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.purple,
                        ),
                      ],
                    ),
                  ),
                ),
                 SizedBox(width: 16),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      
                    },
                    style: ElevatedButton.styleFrom(
                      side:BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding:EdgeInsets.symmetric(vertical: 20.0,horizontal: 12),
                    ),
                    child:Text(
                      "Size Guide",
                      style: GoogleFonts.montserrat(fontSize: 12,fontWeight: FontWeight.w600,color: ColorConstants.purpledark)
                    ),
                  ),
                ),
              ],
            ),
          ),
             ]);
  }

  Column _buildCustomize() {
    return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                       Text(
                      "Classic Treble Diamond Ring",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600)
                      
                                      ),
                                      ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[100],
                        elevation: 0,
                      ),
                      onPressed: () {
                        
                      },
                      icon:  Icon(
                        Icons.collections,
                        color: Colors.purple,
                        size: 18,
                      ),
                      label:  Text(
                        "See Similar",
                        style: GoogleFonts.montserrat(color: Colors.purple,fontWeight: FontWeight.w600,fontSize: 12)
                      ),
                                      ),
                                    ],
                                  ),
                    ),
                  
           SizedBox(height: 14),

          
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 16),
             child: Text(
              "Gold, KT & Diamond Details",
              style: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 12)
                         ),
           ),
           SizedBox(height: 16),

          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildTag("14 KT"),
              buildTag("Rose Gold"),
              buildTag("1.661 g"),
              buildTag("0.056 ct"),
              buildTag("IJ-SI"),
            ],
          ),
           SizedBox(height: 24),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    
                    side:  BorderSide(color: Colors.purple),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding:  EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child:  Text(
                    "CUSTOMIZE SETTINGS",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
                  ]);
  }

  Column _buildDeliveryDetails() {
    return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text("Delivery Details",style:GoogleFonts.montserrat(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600)),
              ),
            
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, color: Colors.purple,size: 16,),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text("Delivering to 688035",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),),
                      ),
                      TextButton(
                        onPressed: () {},
                        child:  Text(
                          "Change Pincode",
                          style: GoogleFonts.montserrat(color: Colors.purple,fontSize: 12,fontWeight: FontWeight.w600)
                      ),
                      )
                    ],
                  ),
                  
              
                ],
              ),
            ),
          ),
           SizedBox(height: 10),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
                      children: [
                        Icon(Icons.calendar_today_outlined, color: Colors.purple),
                        SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text("Expected delivery by 10th Dec",style: GoogleFonts.montserrat(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 12),),
                            Text("Order in next 13 Hrs 21 Mins,T&C",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10))
                            ],
                          ),
                        ),
                        
                      ],
                    ),
          ),
            ]);
  }

  Row _buildPriceDetails() {
    return Row(
                  children: [
                  
              
           SizedBox(height: 8),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.0),
                child:  Text(
                  price,
                  style: GoogleFonts.montserrat(fontSize: 20, color: Colors.purple,fontWeight: FontWeight.bold),
                ),
              ),
              
              Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("(MRP inclusive of all taxes)", style: GoogleFonts.montserrat(color: Colors.grey,fontSize: 12)),
          ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                    child: Center(child: Text("FIND IN STORE",style: GoogleFonts.montserrat(color: ColorConstants.white,fontSize: 12,fontWeight: FontWeight.w600),)),
                  ),
          ),
                  ]);
  }

  Stack _buildPassDatas() {
    return Stack(
            children: [
              Container(
              height: 260,
              width: double.infinity,
              child: Image.network(
                fit: BoxFit.cover,
                image, 
                height: 200,
              ),
            ),
            Positioned(
            right: 10,
            bottom: 25,
            child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7)
            ),
            child: Icon(Icons.favorite_border_outlined,color: ColorConstants.purpledark,)),
            ),
            Positioned(
              bottom: 25,
              left: 10,
              child: Container(
                height: 25,
                  width: 60,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        
                        Text(rating,style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10,fontWeight: FontWeight.w500),),
                         SizedBox(width: 5,),
                        FaIcon(FontAwesomeIcons.solidStar,size: 10,color: Colors.amber,),
                       
                      ],
                    ),
                  ))
            ]
          );
  }
  
  Widget _buildHighlightChip(String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        label,
        style: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.purple,
        ),
      ),
    );
  }

  Widget _buildReviewCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.black12,
              child: Icon(Icons.person, color: Colors.white),
            ),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "RIA SINGH",
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      "(Verified Purchase)",
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 16),

       
        Row(
          children: [
            Icon(Icons.thumb_up_alt_outlined, size: 16, color: Colors.purple),
            SizedBox(width: 4),
            Text(
              "Positives",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            _buildHighlightChip("DESIGN"),
            _buildHighlightChip("SIZE/FIT"),
            _buildHighlightChip("QUALITY"),
            _buildHighlightChip("+4"),
          ],
        ),
        SizedBox(height: 8),

       
        Text(
          "The fit is perfect. I had to order it because size was not available in store..both the process of ordering and picking up was seamless and t...",
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),

       
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlPB1yBsMGfNQdYyLq3B_QzrKHDdbXQ51xqQ&s",
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
  
   Widget buildTag(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding:  EdgeInsets.symmetric(vertical: 5, horizontal: 12),
        decoration: BoxDecoration(
          color: ColorConstants.lightpurple,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          text,
          style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontWeight: FontWeight.w600,fontSize: 10),
        ),
      ),
    );

}
}