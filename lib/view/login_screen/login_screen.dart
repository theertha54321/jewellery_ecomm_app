import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';
import 'package:jewellery_ecomm_app/utils/image_constants.dart';
import 'package:jewellery_ecomm_app/view/create_account_screen/create_account_screen.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_divider.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_inputfield.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_log.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_login_button.dart';
import 'package:jewellery_ecomm_app/view/global_widgets/custom_policy.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildLoginLogo(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomInputField(htext: "Enter Mobile Number or Email",),
              
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20 ),
              child: CustomLoginButton(data:"CONTINUE TO LOGIN",color:  [
            
            Colors.pink.shade400,
            ColorConstants.purple,
            ColorConstants.purple,
            ColorConstants.purple1,
            ColorConstants.purpledark
          ],),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomDivider(),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomLog(),
              
            ),
            SizedBox(height: 30,),
            _buildLoginNavigation(context),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
              color: ColorConstants.grey.withOpacity(.7),
              thickness: .7,
             ),
            ),
            SizedBox(height: 10,),
               CustomPolicy(),
          ],
        ),
      ),
    );
  }

  Row _buildLoginNavigation(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("New to Caratlane?",style: GoogleFonts.montserrat(color: Colors.black,fontSize: 12)),
              SizedBox(width: 2,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    
                    builder: (context)=>CreateAccountScreen()
                    )
                  );
                },
                child: Text("Create Account",style: GoogleFonts.montserrat(color: ColorConstants.purple,fontSize: 12,fontWeight: FontWeight.w500),))
            ],
          );
  }

  Column _buildLoginLogo() {
    return Column(
            children: [
              Image(
                height: 50,
                width: 50,
                image: AssetImage(ImageConstants.applogo)),
            
          SizedBox(height: 20,),
          Text("Welcome back!",style: GoogleFonts.montserrat(fontSize: 18,fontWeight: FontWeight.w600,color:ColorConstants.purpledark),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              textAlign: TextAlign.center,
              maxLines: 2,
              "Login to unlock best prices and become an insider for our exclusive launches offers.",
            style: GoogleFonts.montserrat(fontSize: 12,color:ColorConstants.purpledark),),
          ),
            ]);
  }
}

