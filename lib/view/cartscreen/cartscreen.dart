import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Shopping Cart (1)",style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.w600),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FaIcon(FontAwesomeIcons.whatsapp,color: ColorConstants.purpledark,),
          ),
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCartContainer(),
              SizedBox(height: 16),
              _buildCartCard(),
              SizedBox(height: 16),
              _buildOffers(),
              SizedBox(height: 16),
              _buildOrderSummary(),
              SizedBox(height: 16),
              _buildContactAssist(),
              SizedBox(height: 16),
              _buildCartButton(),
              SizedBox(height: 16), 
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton _buildCartButton() {
    return ElevatedButton(
              onPressed: () {
                
              },
              child: Text("PLACE ORDER", style:GoogleFonts.montserrat(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstants.purple1,
                iconColor: Colors.purple,
                minimumSize: Size(double.infinity, 50),
              ),
            );
  }

  Column _buildContactAssist() {
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

  Column _buildOrderSummary() {
    return Column(
              children: [
                Text(
                  "Order Summary",
                  style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12,fontWeight: FontWeight.bold),
                ),
              
            ListTile(
              title: Text("Subtotal",style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10,fontWeight: FontWeight.bold),),
              trailing: Text("₹18,910",style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10,fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: Text("Shipping Charge",style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10,fontWeight: FontWeight.bold)),
              trailing: Text("Free",style:GoogleFonts.montserrat(color: ColorConstants.purple,fontSize: 10,fontWeight: FontWeight.bold)),
            ),
            ListTile(
              title: Text("Shipping Insurance",style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 10,fontWeight: FontWeight.bold)),
              trailing: Text("Free",style:GoogleFonts.montserrat(color: ColorConstants.purple,fontSize: 10,fontWeight: FontWeight.bold)),
            ),
            Divider(),
            ListTile(
              title: Text("Grand Total",style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12,fontWeight: FontWeight.bold)),
              trailing: Text("₹18,910", style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12,fontWeight: FontWeight.bold)),
            ),
              ]);
  }

  Column _buildOffers() {
    return Column(
              children: [
                Text(
                  "Offers & Benefits",
                  style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12,fontWeight: FontWeight.w500),
                ),
              
            ListTile(
              leading: Icon(Icons.discount, color: Colors.purple),
              title: Text("Apply Coupon",style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12,fontWeight: FontWeight.w500),),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.purple),
              onTap: () {
                
              },
            ),
              ]);
  }

  Card _buildCartCard() {
    return Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.network(
                      'https://images.pexels.com/photos/2219195/pexels-photo-2219195.jpeg?auto=compress&cs=tinysrgb&w=600', // Replace with actual image URL
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Glowy Diamond Vanki Ring",
                            style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text("₹18,910",style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12,fontWeight: FontWeight.w500),),
                          SizedBox(height: 8),
                          Text("Quantity: 1  |  Size: 12",style:GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 12,fontWeight: FontWeight.w500),),
                          SizedBox(height: 8),
                          Text(
                            "Est Delivery by 25th Nov",
                            style:GoogleFonts.montserrat(color: ColorConstants.purple1,fontSize: 12,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.close, color: Colors.grey),
                  ],
                ),
              ),
            );
  }

  Container _buildCartContainer() {
    return Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.purple.shade50,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order online & pick up from a store",
                    style: GoogleFonts.montserrat(color: ColorConstants.purpledark,fontSize: 14,fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.store, color: Colors.purple),
                ],
              ),
            );
  }
}