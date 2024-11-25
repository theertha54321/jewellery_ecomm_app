import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';
import 'package:jewellery_ecomm_app/utils/image_constants.dart';
import 'package:jewellery_ecomm_app/view/all_productscreen/all_productscreen.dart';
import 'package:jewellery_ecomm_app/view/bottom_nav/bottom_nav.dart';
import 'package:jewellery_ecomm_app/view/category_screen/category_itemcard.dart';
import 'package:jewellery_ecomm_app/view/category_screen/custom_con.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  
  List<String> items = ["Rings", "Earrings", "Necklaces", "Bracelets", "Silver by Shaya", "Pendants", "Mangalsutra", "22KT"];
  List itemImage=[
    "https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/10140274/pexels-photo-10140274.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2678094/pexels-photo-2678094.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1191531/pexels-photo-1191531.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/298852/pexels-photo-298852.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/965983/pexels-photo-965983.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://media.istockphoto.com/id/1835255850/photo/still-life-image-traditional-indian-hindu-wedding-necklace-of-a-bride-called-mangalsutra-with.jpg?b=1&s=612x612&w=0&k=20&c=gbZu83vGnD6WKCmV0r9gi1Ysj5mfmFrvMsoUyH51wmM=",
    "https://media.istockphoto.com/id/1296634658/photo/indian-traditional-gold-wedding-earrings-on-wooden-box.jpg?b=1&s=612x612&w=0&k=20&c=D2yN2Dst1LGHUInGuNFIr_qpI015Thq5KCpruVugPT8="
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 100,
          scrolledUnderElevation: 0,
           backgroundColor: Colors.white,
           elevation: 0,
          leading:Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(
                          
                          builder: (context)=>BottomNav()
                          )
                        );
                  },
                  child: Icon(Icons.close,color:Colors.black)),
                Image(
                  height: 27,
                  width: 30,
                  fit: BoxFit.fill,
                  image: AssetImage(ImageConstants.applogo)),
              ],
            ),
          ),
          actions: [
            CircleAvatar(
              backgroundImage: NetworkImage("data:image/png;base64,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"),
              
              radius: 10),
            SizedBox(width: 8,),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: ColorConstants.purple,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: ColorConstants.purple,)),
      
          ],
          bottom: TabBar(
            
           dividerColor:Colors.transparent,
           labelStyle:  GoogleFonts.montserrat(color: ColorConstants.purple,fontSize: 14,fontWeight: FontWeight.w600),
            unselectedLabelStyle: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.w600),
            tabs: [
            Tab(
              text: "Women",
            ),
            Tab(
              text: "Men",
            ),
            Tab(
              text: "Kid",
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            child: _buildWomen(),
          ),
          Container(
           child:  _buildMen()
          ),
          Container(
            child: _buildKid(),
          )
        ]),


      )
      );
    
  }

  SingleChildScrollView _buildKid() {
    return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text("Top Categories",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    CustomCategoryCard(tx: "Rings", im: "https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=600",),
                    Spacer(),
                    CustomCategoryCard(tx: "Earrings", im: "https://images.pexels.com/photos/10140274/pexels-photo-10140274.jpeg?auto=compress&cs=tinysrgb&w=600", )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    CustomCategoryCard(tx: "Bangles", im: "https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=600",),
                    Spacer(),
                    CustomCategoryCard(tx: "Solitaires", im: "https://images.pexels.com/photos/10140274/pexels-photo-10140274.jpeg?auto=compress&cs=tinysrgb&w=600", )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    CustomCategoryCard(tx: "22KT", im: "https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=600",),
                    Spacer(),
                    CustomCategoryCard(tx: "Silver by Shaya", im: "https://images.pexels.com/photos/10140274/pexels-photo-10140274.jpeg?auto=compress&cs=tinysrgb&w=600", )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    CustomCategoryCard(tx: "Mangalsutra", im: "https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=600",),
                    Spacer(),
                    CustomCategoryCard(tx: "Necklaces", im: "https://images.pexels.com/photos/10140274/pexels-photo-10140274.jpeg?auto=compress&cs=tinysrgb&w=600", )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text("Top Categories",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10),),
              SizedBox(height: 10,),
              SizedBox(
                height: 140,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    
                    
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 2,
                   
                    crossAxisCount: 2),
                    itemCount: 2,
                     itemBuilder: (context,index)=>Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 24),
                       child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                         child: Container(
                          height: 70,
                         
                          decoration: BoxDecoration(
                            color: ColorConstants.lightpurple,
                            borderRadius: BorderRadius.circular(14),
                           
                          ),
                          child: InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProductscreen()));
                          },
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
                                  child: Image(
                                    height: 90,
                                    width: double.infinity,
                                    fit: BoxFit.fitWidth,
                                    
                                    image: NetworkImage("https://media.istockphoto.com/id/1087465196/photo/adult-women-sitting-at-sofa-stock-images.jpg?b=1&s=612x612&w=0&k=20&c=S3_ofsXZwh7UhWdKOFbZ6XWFGFuY3crQmiv7Lxj3MAg="))),
                                     SizedBox(height: 5,),
                                Text("More Jewellery",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.w600),),
                              ]
                            
                            ),
                          ),
                          
                         
                            
                         
                         ),
                       ),
                     ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Disney|Silver|DL X Shaya",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10),),
              SizedBox(height: 10,),
              CarouselSlider(
 items: [
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
          
          "https://images.pexels.com/photos/29469332/pexels-photo-29469332/free-photo-of-child-exploring-in-a-sunlit-meadow.jpeg?auto=compress&cs=tinysrgb&w=600")),
      ),
    ),
  )
 ],
 options: CarouselOptions(
  height: 120,
  
  aspectRatio: 9/16,
  viewportFraction: 1,
  initialPage: 0,
  enableInfiniteScroll: true,
  reverse: false,
  autoPlay: true,
  autoPlayInterval: Duration(seconds: 3),
  autoPlayAnimationDuration: Duration(milliseconds: 800),
  autoPlayCurve: Curves.fastOutSlowIn,
  
  
  scrollDirection: Axis.horizontal,
 )
 ),
        SizedBox(height: 20,),
              Text("Need Help in Buying",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10),),
              SizedBox(height: 10,),
              CustomConButton(color1:const Color.fromARGB(255, 224, 177, 105),color2: const Color.fromARGB(255, 218, 163, 81),color3: Color.fromARGB(255, 245, 187, 101),
              text1: "CaratLane Postcards",text2: "Embed a heartfelt video in ypur ring!",icon: Icons.favorite_outline,
              ),
              SizedBox(height: 20,),
             CustomConButton(color1: const Color.fromARGB(255, 228, 182, 236), color2: const Color.fromARGB(255, 224, 138, 239), color3: const Color.fromARGB(255, 208, 95, 228), text1: "CL TV", text2:"Watch & Buy with Influencers", icon: Icons.tv_outlined),
              SizedBox(height: 20,),
              CustomConButton(color1: const Color.fromARGB(255, 238, 175, 196), color2: Color.fromARGB(255, 238, 125, 163), color3:Color.fromARGB(255, 240, 79, 132), text1: "CaratLane PoP", text2: "Plan your Purchase in advance", icon: Icons.money),
              SizedBox(height: 20,),
              CustomConButton(color1: const Color.fromARGB(255, 227, 127, 120), color2: Color.fromARGB(255, 230, 199, 128), color3: const Color.fromARGB(255, 245, 232, 118), text1: "Gold Exchange Program", text2: "Your precious gold,our new designs!", icon:Icons.gif_box),
              SizedBox(height: 20,),
              CustomConButton(color1: const Color.fromARGB(255, 172, 210, 241), color2: const Color.fromARGB(255, 123, 188, 241), color3: const Color.fromARGB(255, 70, 160, 233), text1: "E Gold", text2: "Buy,sell or redeem digital gold", icon:Icons.redeem_outlined),
              SizedBox(height: 20,),




            ],
          ),
        );
  }

  SingleChildScrollView _buildMen() {
    return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text("Top Categories",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    CustomCategoryCard(tx: "Rings", im: "https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=600",),
                    Spacer(),
                    CustomCategoryCard(tx: "Earrings", im: "https://images.pexels.com/photos/10140274/pexels-photo-10140274.jpeg?auto=compress&cs=tinysrgb&w=600", )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    CustomCategoryCard(tx: "Bangles", im: "https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=600",),
                    Spacer(),
                    CustomCategoryCard(tx: "Solitaires", im: "https://images.pexels.com/photos/10140274/pexels-photo-10140274.jpeg?auto=compress&cs=tinysrgb&w=600", )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    CustomCategoryCard(tx: "22KT", im: "https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=600",),
                    Spacer(),
                    CustomCategoryCard(tx: "Silver by Shaya", im: "https://images.pexels.com/photos/10140274/pexels-photo-10140274.jpeg?auto=compress&cs=tinysrgb&w=600", )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    CustomCategoryCard(tx: "Mangalsutra", im: "https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=600",),
                    Spacer(),
                    CustomCategoryCard(tx: "Necklaces", im: "https://images.pexels.com/photos/10140274/pexels-photo-10140274.jpeg?auto=compress&cs=tinysrgb&w=600", )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text("Top Categories",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10),),
              SizedBox(height: 10,),
              SizedBox(
                height: 140,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    
                    
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 2,
                   
                    crossAxisCount: 2),
                    itemCount: 2,
                     itemBuilder: (context,index)=>Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 24),
                       child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                         child: Container(
                          height: 70,
                         
                          decoration: BoxDecoration(
                            color: ColorConstants.lightpurple,
                            borderRadius: BorderRadius.circular(14),
                           
                          ),
                          child: InkWell(
                            onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProductscreen()));
                            },
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
                                  child: Image(
                                    height: 90,
                                    width: double.infinity,
                                    fit: BoxFit.fitWidth,
                                    
                                    image: NetworkImage("https://media.istockphoto.com/id/1087465196/photo/adult-women-sitting-at-sofa-stock-images.jpg?b=1&s=612x612&w=0&k=20&c=S3_ofsXZwh7UhWdKOFbZ6XWFGFuY3crQmiv7Lxj3MAg="))),
                                     SizedBox(height: 5,),
                                Text("More Jewellery",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.w600),),
                              ]
                            
                            ),
                          ),
                          
                         
                            
                         
                         ),
                       ),
                     ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Disney|Silver|DL X Shaya",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10),),
              SizedBox(height: 10,),
              CarouselSlider(
 items: [
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
          
          "https://images.pexels.com/photos/10361482/pexels-photo-10361482.jpeg?auto=compress&cs=tinysrgb&w=600")),
      ),
    ),
  )
 ],
 options: CarouselOptions(
  height: 120,
  
  aspectRatio: 9/16,
  viewportFraction: 1,
  initialPage: 0,
  enableInfiniteScroll: true,
  reverse: false,
  autoPlay: true,
  autoPlayInterval: Duration(seconds: 3),
  autoPlayAnimationDuration: Duration(milliseconds: 800),
  autoPlayCurve: Curves.fastOutSlowIn,
  
  
  scrollDirection: Axis.horizontal,
 )
 ),
        SizedBox(height: 20,),
              Text("Need Help in Buying",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10),),
              SizedBox(height: 10,),
              CustomConButton(color1:const Color.fromARGB(255, 224, 177, 105),color2: const Color.fromARGB(255, 218, 163, 81),color3: Color.fromARGB(255, 245, 187, 101),
              text1: "CaratLane Postcards",text2: "Embed a heartfelt video in ypur ring!",icon: Icons.favorite_outline,
              ),
              SizedBox(height: 20,),
             CustomConButton(color1: const Color.fromARGB(255, 228, 182, 236), color2: const Color.fromARGB(255, 224, 138, 239), color3: const Color.fromARGB(255, 208, 95, 228), text1: "CL TV", text2:"Watch & Buy with Influencers", icon: Icons.tv_outlined),
              SizedBox(height: 20,),
              CustomConButton(color1: const Color.fromARGB(255, 238, 175, 196), color2: Color.fromARGB(255, 238, 125, 163), color3:Color.fromARGB(255, 240, 79, 132), text1: "CaratLane PoP", text2: "Plan your Purchase in advance", icon: Icons.money),
              SizedBox(height: 20,),
              CustomConButton(color1: const Color.fromARGB(255, 227, 127, 120), color2: Color.fromARGB(255, 230, 199, 128), color3: const Color.fromARGB(255, 245, 232, 118), text1: "Gold Exchange Program", text2: "Your precious gold,our new designs!", icon:Icons.gif_box),
              SizedBox(height: 20,),
              CustomConButton(color1: const Color.fromARGB(255, 172, 210, 241), color2: const Color.fromARGB(255, 123, 188, 241), color3: const Color.fromARGB(255, 70, 160, 233), text1: "E Gold", text2: "Buy,sell or redeem digital gold", icon:Icons.redeem_outlined),
              SizedBox(height: 20,),




            ],
          ),
        );
  }

  SingleChildScrollView _buildWomen() {
    return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Text("Top Categories",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      CustomCategoryCard(tx: "Rings", im: "https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=600",),
                      Spacer(),
                      CustomCategoryCard(tx: "Earrings", im: "https://images.pexels.com/photos/10140274/pexels-photo-10140274.jpeg?auto=compress&cs=tinysrgb&w=600", )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      CustomCategoryCard(tx: "Bangles", im: "https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=600",),
                      Spacer(),
                      CustomCategoryCard(tx: "Solitaires", im: "https://images.pexels.com/photos/10140274/pexels-photo-10140274.jpeg?auto=compress&cs=tinysrgb&w=600", )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      CustomCategoryCard(tx: "22KT", im: "https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=600",),
                      Spacer(),
                      CustomCategoryCard(tx: "Silver by Shaya", im: "https://images.pexels.com/photos/10140274/pexels-photo-10140274.jpeg?auto=compress&cs=tinysrgb&w=600", )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      CustomCategoryCard(tx: "Mangalsutra", im: "https://images.pexels.com/photos/2814808/pexels-photo-2814808.jpeg?auto=compress&cs=tinysrgb&w=600",),
                      Spacer(),
                      CustomCategoryCard(tx: "Necklaces", im: "https://images.pexels.com/photos/10140274/pexels-photo-10140274.jpeg?auto=compress&cs=tinysrgb&w=600", )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Text("Top Categories",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10),),
                SizedBox(height: 10,),
                SizedBox(
                  height: 140,
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      
                      
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 2,
                     
                      crossAxisCount: 2),
                      itemCount: 2,
                       itemBuilder: (context,index)=>Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 24),
                         child: ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                           child: Container(
                            height: 70,
                           
                            decoration: BoxDecoration(
                              color: ColorConstants.lightpurple,
                              borderRadius: BorderRadius.circular(14),
                             
                            ),
                            child: InkWell(
                              onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProductscreen()));
                              },
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(14)),
                                    child: Image(
                                      height: 90,
                                      width: double.infinity,
                                      fit: BoxFit.fitWidth,
                                      
                                      image: NetworkImage("https://media.istockphoto.com/id/1087465196/photo/adult-women-sitting-at-sofa-stock-images.jpg?b=1&s=612x612&w=0&k=20&c=S3_ofsXZwh7UhWdKOFbZ6XWFGFuY3crQmiv7Lxj3MAg="))),
                                       SizedBox(height: 5,),
                                  Text("More Jewellery",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.w600),),
                                ]
                              
                              ),
                            ),
                            
                           
                              
                           
                           ),
                         ),
                       ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Disney|Silver|DL X Shaya",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10),),
                SizedBox(height: 10,),
                CarouselSlider(
 items: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
            
            "https://media.istockphoto.com/id/1463496346/photo/traditional-jewelry.jpg?b=1&s=612x612&w=0&k=20&c=8wF637qHOrQjdV083UK2GGbbCx4eZpMdnM4LbXVHEzM=")),
        ),
      ),
    )
 ],
 options: CarouselOptions(
    height: 120,
    
    aspectRatio: 9/16,
    viewportFraction: 1,
    initialPage: 0,
    enableInfiniteScroll: true,
    reverse: false,
    autoPlay: true,
    autoPlayInterval: Duration(seconds: 3),
    autoPlayAnimationDuration: Duration(milliseconds: 800),
    autoPlayCurve: Curves.fastOutSlowIn,
    
    
    scrollDirection: Axis.horizontal,
 )
 ),
          SizedBox(height: 20,),
                Text("Need Help in Buying",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 10),),
                SizedBox(height: 10,),
                CustomConButton(color1:const Color.fromARGB(255, 224, 177, 105),color2: const Color.fromARGB(255, 218, 163, 81),color3: Color.fromARGB(255, 245, 187, 101),
                text1: "CaratLane Postcards",text2: "Embed a heartfelt video in ypur ring!",icon: Icons.favorite_outline,
                ),
                SizedBox(height: 20,),
               CustomConButton(color1: const Color.fromARGB(255, 228, 182, 236), color2: const Color.fromARGB(255, 224, 138, 239), color3: const Color.fromARGB(255, 208, 95, 228), text1: "CL TV", text2:"Watch & Buy with Influencers", icon: Icons.tv_outlined),
                SizedBox(height: 20,),
                CustomConButton(color1: const Color.fromARGB(255, 238, 175, 196), color2: Color.fromARGB(255, 238, 125, 163), color3:Color.fromARGB(255, 240, 79, 132), text1: "CaratLane PoP", text2: "Plan your Purchase in advance", icon: Icons.money),
                SizedBox(height: 20,),
                CustomConButton(color1: const Color.fromARGB(255, 227, 127, 120), color2: Color.fromARGB(255, 230, 199, 128), color3: const Color.fromARGB(255, 245, 232, 118), text1: "Gold Exchange Program", text2: "Your precious gold,our new designs!", icon:Icons.gif_box),
                SizedBox(height: 20,),
                CustomConButton(color1: const Color.fromARGB(255, 172, 210, 241), color2: const Color.fromARGB(255, 123, 188, 241), color3: const Color.fromARGB(255, 70, 160, 233), text1: "E Gold", text2: "Buy,sell or redeem digital gold", icon:Icons.redeem_outlined),
                SizedBox(height: 20,),




              ],
            ),
          );
  }
}

