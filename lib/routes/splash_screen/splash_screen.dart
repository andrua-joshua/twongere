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
      body:
      //  SafeArea(
      //   child:
         Container(
          constraints:  const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/bg.png")

            )
          ),
          child: Column(
            children: [
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 100,),
                    Text("\"TWOGERE\"", style:  AppStyles.splashTitleBlackTxtStyle,),
                  ],
                )),
              const SizedBox(
                child: Center(
                  child: Image(
                    width: 30,
                    height: 30,
                    image: AssetImage("assets/images/loding.gif")),
                ),
              ),
              const SizedBox(height: 70,),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/cog.png"))
                      ),
                    ),
                    const SizedBox(width: 10,),
                    const Text("Cognosphere Dynamics.",style: AppStyles.normalGreyColorTxtStyle)
                  ],
                )
              ),
              SizedBox(height: 10,),
            ],
          // ),

        )),
    );
  }

}