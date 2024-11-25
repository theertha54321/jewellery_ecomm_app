import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';

class FilterPage extends StatelessWidget {

   FilterPage({super.key});

   Map<String, bool> priceFilters = {
    "Rs.5001 To Rs.10000": false,
    "Rs.10001 To Rs.15000": false,
    "Rs.15001 To Rs.20000": false,
    "Rs.20001 To Rs.30000": false,
    "Rs.30001 To Rs.40000": false,
    "Rs.40001 To Rs.50000": false,
    "Rs.50001 To Rs.75000": false,
    "Rs.75001 To Rs.100000": false,
    "Rs.100001 To Rs.150000": false,
    "Rs.150001 To Rs.200000": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Filters",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12,fontWeight: FontWeight.w600),),
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(Icons.close,color: ColorConstants.purpledark,),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Row(
        children: [
          // sidecontainer
          Container(
            width: 190,
            color: Colors.grey[200],
            child: ListView(

              children: [
                buildSidebarItem("Price", true),
                buildSidebarItem("Discount_Ranges", false),
                buildSidebarItem("Product Type", false),
                buildSidebarItem("Weight Ranges", false),
                buildSidebarItem("Material", false),
                buildSidebarItem("Metal", false),
                buildSidebarItem("Ring size", false),
                buildSidebarItem("Shop for", false),
                buildSidebarItem("Occasion", false),
                buildSidebarItem("Gemstone", false),
                buildSidebarItem("Ring Style", false),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "See More Filters",
                    style: GoogleFonts.montserrat(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 10
                    ),
                  ),
                ),
              ],
            ),
          ),

          
          Expanded(
            child: ListView(
              padding:  EdgeInsets.all(16.0),
              children: [
                buildPriceRange("Rs.5001 To Rs.10000"),
                buildPriceRange("Rs.10001 To Rs.15000"),
                buildPriceRange("Rs.15001 To Rs.20000"),
                buildPriceRange("Rs.20001 To Rs.30000"),
                buildPriceRange("Rs.30001 To Rs.40000"),
                buildPriceRange("Rs.40001 To Rs.50000"),
                buildPriceRange("Rs.50001 To Rs.75000"),
                buildPriceRange("Rs.75001 To Rs.100000"),
                buildPriceRange("Rs.100001 To Rs.150000"),
                buildPriceRange("Rs.150001 To Rs.200000"),
              ],
            ),
          ),
        ],
      ),
  
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.lightpurple,
                  
                  padding:  EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  
                },
                child:  Text("CLEAR ALL",style: GoogleFonts.montserrat(color: Colors.purple,fontSize: 12,fontWeight: FontWeight.w600)),
              ),
            ),
             SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  
                  padding:  EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  
                },
                child:  Text("APPLY FILTERS",style: GoogleFonts.montserrat(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w600),)
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSidebarItem(String title, bool isActive) {
    return Container(
     
      color: isActive ? Colors.white : Colors.transparent,
      child: ListTile(
        title: Text(
          title,
          style: GoogleFonts.montserrat(
            color: isActive ? Colors.purple : Colors.black,
            fontSize: 10,
            fontWeight:  FontWeight.bold
          ),
        ),
        onTap: () {
          
        },
      ),
    );
  }

  Widget buildPriceRange(String range) {
    return ListTile(
      leading: const Icon(Icons.check, color: Colors.purple,size: 16,),
      title: Text(range,style: GoogleFonts.montserrat(
            color:   ColorConstants.purpledark,
            fontSize: 12,
            fontWeight:  FontWeight.bold
          ),),
      
      onTap: () {
        
      },
    );
  }
}