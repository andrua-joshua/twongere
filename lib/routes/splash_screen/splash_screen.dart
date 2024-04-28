import 'package:flutter/material.dart';
import 'package:twongere/route.dart';
import 'package:twongere/util/app_styles.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context){

    Future.delayed(const Duration(seconds: 5)).then(
      (value) => Navigator.pushNamed(context, RoutesGenerator.loginScreen));

    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints:  const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/bg.png")

            )
          ),
          child: const Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 200,),
                    Text("\"TWOGERE\"", style:  AppStyles.splashTitleBlackTxtStyle,),
                  ],
                )),
              SizedBox(
                child: Center(
                  child: Image(
                    width: 30,
                    height: 30,
                    image: AssetImage("assets/images/loding.gif")),
                ),
              ),
              SizedBox(height: 70,),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      foregroundImage: AssetImage("assets/images/cog.png"),
                      ),
                    SizedBox(width: 10,),
                    Text("Cognosphere Dynamics.",style: AppStyles.normalGreyColorBoldTxtStyle)
                  ],
                )
              ),
              SizedBox(height: 10,),
            ],
          ),
        )),
    );
  }

}