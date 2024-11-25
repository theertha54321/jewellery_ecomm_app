import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';
import 'package:jewellery_ecomm_app/view/category_screen/category_screen.dart';
import 'package:jewellery_ecomm_app/view/filter_page/filter_page.dart';
import 'package:jewellery_ecomm_app/view/pro_details/pro_details.dart';

class AllProductscreen extends StatelessWidget {
  List images=[
    "https://images.pexels.com/photos/1805597/pexels-photo-1805597.jpeg?auto=compress&cs=tinysrgb&w=600",
    "data:image/jpeg;base64,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",
    "data:image/jpeg;base64,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",
    "data:image/jpeg;base64,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",
    "data:image/jpeg;base64,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",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSobdrEMeLh6hAXkkDUzRmhBee2vQL1LyeRiA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuv7yOasUWjE2YoDFra4S7Wr5ueV_eHkH0cA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdjQ6ZCI_hovxvlF67FUoic5OuEBFxmPZsrA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9rYhycm9Jl1e8pUr94sfUfZG_fL6iBRQVGQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8nv2RSldbLKx8gHEe0EBRl7sjrZyhXfMfEQ&s"
  ];
  List<String> nameJewellery = [
  "Classic Gold Ring",
  "Diamond Stud Earrings",
  "Emerald Pendant Necklace",
  "Sapphire Engagement Ring",
  "Pearl Drop Earrings",
  "Ruby Charm Bracelet",
  "Platinum Wedding Band",
  "Rose Gold Anklet",
  "Opal Pendant Necklace",
  "Silver Chain Necklace",
  ];
  List<String> ratings = [
  "4.9",
  "4.8",
  "4.7",
  "4.6",
  "4.5",
  "4.4",
  "4.3",
  "4.2",
  "4.1",
  "4.0"
];
List<String> prices = [
  "21,345",
  "15,999",
  "8,250",
  "12,499",
  "18,750",
  "9,999",
  "25,300",
  "14,875",
  "19,450",
  "11,250"
];


  List sortOptions = [
    "Price: Low to High",
    "Price: High to Low",
    "Ratings: High to Low",
    "Popularity",
    "New Arrivals",
    "Discount: High to Low"
];
   AllProductscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: Stack(
        
         children:[
          
          Positioned(
            bottom: 35,
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Deliver to Theertha',style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
            Text("688035",style: GoogleFonts.montserrat(color: ColorConstants.purple,fontSize: 12,fontWeight: FontWeight.bold)),
            
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search,color: ColorConstants.purpledark),
            onPressed: () {
              
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite,color: ColorConstants.purpledark,),
            onPressed: () {
             
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart,color: ColorConstants.purpledark),
            onPressed: () {
             
            },
          ),
        ],
      ),
      body: _buildGridViewAllProduct(context),
    );
  }

  Column _buildGridViewAllProduct(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.builder(
            itemCount: 10,
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 3/4,mainAxisSpacing: 1),
           itemBuilder: (context,index)=>Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Stack(
                            children: [
                             Padding(
                               padding: const EdgeInsets.all(14.0),
                               child: InkWell(
                                onTap: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProDetails(image: images[index],name: nameJewellery[index],rating: ratings[index],price: prices[index],)));
                                },
                                 child: Container(
                                 height: 230,
                                 width: double.infinity,
                                 
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(images[index])),
                                    color: Colors.white,borderRadius: BorderRadius.circular(7)),
                                                 ),
                               ),
                             ),
                             Positioned(
                              right: 23,
                              top: 20,
                               child: Icon(Icons.favorite_border_outlined,color: ColorConstants.purpledark,),
                             ),
                             Positioned(
                              left: 23,
                              top: 20,
                              child:Container(
                              
                                        height: 25,
                                        width: 75,
                                        decoration: BoxDecoration(
                                         
                                          borderRadius: BorderRadius.circular(5),
                                          color: const Color.fromARGB(255, 240, 181, 5)
                                        ),
                                        child: Center(child: Text("TRENDING",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600),)),
                                      ), ),
                                      Positioned(
              bottom: 23,
              left: 20,
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
                        
                        
                        Text(ratings[index],style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10,fontWeight: FontWeight.w500),),
                         SizedBox(width: 5,),
                        FaIcon(FontAwesomeIcons.solidStar,size: 10,color: Colors.amber,),
                       
                      ],
                    ),
                  ))
                            ]
                                         ),
                                         SizedBox(height: 1,),
                                         Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(nameJewellery[index],style: GoogleFonts.montserrat(color: ColorConstants.purple,fontWeight: FontWeight.bold,fontSize: 10),),
                                         ),
                                         SizedBox(height: 5,),
                                         Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Text(prices[index],style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontWeight: FontWeight.w600,fontSize: 12),),
                                         ),
                                         SizedBox(height: 5,),
                                        
                                         
                                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18.0),
                            child:Container(
                              
                                        height: 25,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: const Color.fromARGB(255, 15, 154, 20)),
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.white
                                        ),
                                        child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Icons.video_call,color: const Color.fromARGB(255, 15, 154, 20),size: 20,),
                                              Text("LIVE VIDEO CALL",style: GoogleFonts.montserrat(color: const Color.fromARGB(255, 15, 154, 20),fontSize: 12,fontWeight: FontWeight.w600),),
                                            ],
                                          ),
                                        ),
                                      ),
                                         ),
                                       ],
                                     )
                                     
                                     ),
        ),
        _buildBottomBarAllProduct(context)
      ],
    );
  }

  Container _buildBottomBarAllProduct(BuildContext context) {
    return Container(
          padding: EdgeInsets.all(8),
          height: 40,
          color: Color.fromARGB(255, 62, 5, 50),
          child: Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryScreen()));
                },
                child: Row(
                  children: [
                    Icon(Icons.category_outlined,color: Colors.white,size: 18,),
                    Text("Categories",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              Spacer(),
              
              Text("|",style: GoogleFonts.montserrat(color: Colors.pink,fontSize: 12,fontWeight: FontWeight.w500),),
              Spacer(),
            
              InkWell(
                onTap: (){
                   showModalBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              builder: (context) =>
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 40,
                          height: 4,
                          decoration: BoxDecoration(
                            color: ColorConstants.lightpurple,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: Text(
                          'Sort Designs By',
                          style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 18,fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 16),
                      ListTile(
                        title: Text('Latest', style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.bold),),
                        onTap: () {
                          
                        },
                      ),
                      ListTile(
                        title: Text('Discount', style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.bold)),
                        onTap: () {
                         
                        },
                      ),
                      ListTile(
                        title: Text('Featured', style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.bold)),
                        onTap: () {
                         
                        },
                      ),
                      ListTile(
                        title: Text('Price: Low to High', style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.bold)),
                        onTap: () {
                         
                        },
                      ),
                      ListTile(
                        title: Text('Price: High to Low', style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.bold)),
                        onTap: () {
                        }
                      ),
                      ListTile(
                        title: Text('Customer Rating', style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.bold)),
                        onTap: (){

                        },
                      ),
                    ],
                  ),
                ),
                
                   );
                },
                child: Row(
                  children: [
                    Icon(Icons.sort,color: Colors.white,size: 18,),
                    Text("Sort",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              Spacer(),
              Text("|",style: GoogleFonts.montserrat(color: Colors.pink,fontSize: 12,fontWeight: FontWeight.w500),),
              Spacer(),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterPage()));
                },
                child: Row(
                  children: [
                    Icon(Icons.filter_tilt_shift,color: Colors.white,size: 18,),
                    Text("Filter",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              
            ],
          ),
        );
  }
}