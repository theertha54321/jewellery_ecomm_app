import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Wishlistscreen extends StatelessWidget {
  const Wishlistscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(right: 7),
          child: InkWell(
            onTap: (){
               Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        ),
        title: Text("Wishlist",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
        actions: [
          FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
          SizedBox(width: 15,),
          Icon(Icons.phone_outlined,color: Colors.black,),
          SizedBox(width: 15,),
          Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Icon(Icons.message_outlined,color: Colors.black),
          )
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context,index)=>
          _buildWishlistCard(),
        ),
      ),
    );
  }

  Card _buildWishlistCard() {
    return Card(
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 3,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://images.pexels.com/photos/265856/pexels-photo-265856.jpeg?auto=compress&cs=tinysrgb&w=600', // Replace with product image URL
                    width: 100,
                    height: 110,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Text(
                        'Elle Interlooped Cutout...',
                        style: GoogleFonts.montserrat(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8),
                      
                      Text(
                        '₹21,468',
                       style: GoogleFonts.montserrat(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 16),
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            onPressed: () {
                              
                            },
                            child: Text('Move to Cart',style: GoogleFonts.montserrat(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500),),
                          ),
                          IconButton(
                            onPressed: () {
                              
                            },
                            icon: Icon(Icons.share, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              
              IconButton(
                onPressed: () {
                 
                },
                icon: Icon(Icons.close, color: Colors.black),
              ),
            ],
          ),
        );
  }
}