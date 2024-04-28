import 'package:flutter/material.dart';
import 'package:twongere/route.dart';
import 'package:twongere/routes/login_screen/widgets/login_screen_widgets.dart';
import 'package:twongere/util/app_buttons.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_styles.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});

  @override
  _signUpScreenState createState ()=> _signUpScreenState();


}


class _signUpScreenState extends State<SignUpScreen>{

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primarColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text("\"Some Catchy text....\"", style: AppStyles.titleWhiteTxtStyle,),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 40,),
                      const Text("Create an account", style: AppStyles.splashTitleBlackTxtStyle,),
                      const SizedBox(height: 10,),
                      const Text("Connect with your friends \ntoday!", style: AppStyles.normalGreyColorTxtStyle,),
                      const SizedBox(height: 50,),
                      const Text("Email Address", style: AppStyles.normalPrimaryColorTxtStyle,),
                      const SizedBox(height: 2,),
                      TextInputWidget(
                        controller: _emailController, 
                        hintText: "drillox@gmail.com", 
                        isPassword: false),
                      const SizedBox(height: 20,),
                      const Text("Phone Number", style: AppStyles.normalPrimaryColorTxtStyle,),
                      const SizedBox(height: 2,),
                      PhoneInputWidget(
                        controller: _phoneController, 
                        hintText: "Enter your phone Number", 
                        isPassword: false),
                      const SizedBox(height: 20,),
                      const Text("Password", style: AppStyles.normalPrimaryColorTxtStyle,),
                      const SizedBox(height: 2,),
                      TextInputWidget(
                        controller: _passwordController, 
                        hintText: "Please Enter your Password", 
                        isPassword: true),
                      
                      const SizedBox(height: 50,),
                      CorneredButton(
                        label: "Sign Up", 
                        bgColor: AppColors.primarColor, 
                        txtColor: AppColors.whiteColor, 
                        onClick: ()=> Navigator.pushNamed(context, RoutesGenerator.homeScreen))
                    ],
                  ),
                )),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?", style: AppStyles.normalGreyColorTxtStyle,),
                      // SizedBox(width: 10,),
                      TextButton(
                        onPressed: ()=> Navigator.pushNamed(context, RoutesGenerator.loginScreen), 
                        child: const Text("Login", style: AppStyles.normalPrimaryColorTxtStyle,),)
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
            ],
          ),
          )),
    );
  }
}