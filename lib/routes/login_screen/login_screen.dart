import 'package:flutter/material.dart';
import 'package:twongere/route.dart';
import 'package:twongere/routes/login_screen/widgets/login_screen_widgets.dart';
import 'package:twongere/util/app_buttons.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_styles.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  _loginScreenState createState ()=> _loginScreenState();


}


class _loginScreenState extends State<LoginScreen>{

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isChecked = true;

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primarColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text("Hi, Welcome!", style: AppStyles.titleWhiteTxtStyle,),
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
                      // const Text("Hi, Welcome Back!", style: AppStyles.simpleTitleBlackTxtStyle,),
                      // const SizedBox(height: 10,),
                      // const Text("Hello again, you've been \nmissed!", style: AppStyles.normalGreyColorTxtStyle,),
                      // const SizedBox(height: 50,),
                      const Text("Email", style: AppStyles.normalPrimaryColorTxtStyle,),
                      const SizedBox(height: 2,),
                      TextInputWidget(
                        controller: _emailController, 
                        hintText: "yourname@gmail.com", 
                        isPassword: false),
                      const SizedBox(height: 20,),
                      const Text("Password", style: AppStyles.normalPrimaryColorTxtStyle,),
                      const SizedBox(height: 2,),
                      TextInputWidget(
                        controller: _passwordController, 
                        hintText: "Password", 
                        isPassword: true),
                      const SizedBox(height: 20,),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Row(
                                children: [
                                  Checkbox(
                                    activeColor: AppColors.primarColor,
                                    value: isChecked, 
                                    onChanged: (x){
                                      setState(() {
                                        isChecked = x??false;
                                      });
                                    }),
                                  const Text("Remember Me", style: AppStyles.normalBlackTxtStyle,)
                                ],
                              ),
                            ),

                            TextButton(
                              onPressed: (){}, 
                              child: const Text("Forgot Password", style: AppStyles.normalPrimaryColorTxtStyle,))
                          ],
                        ),
                      ),
                      const SizedBox(height: 50,),
                      CorneredButton(
                        label: "Login", 
                        bgColor: AppColors.primarColor, 
                        txtColor: AppColors.whiteColor, 
                        onClick: () => Navigator.pushNamed(context, RoutesGenerator.homeScreen))
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
                        onPressed: ()=> Navigator.pushNamed(context, RoutesGenerator.signupScreen), 
                        child: const Text("Sign Up", style: AppStyles.normalPrimaryColorTxtStyle,),)
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