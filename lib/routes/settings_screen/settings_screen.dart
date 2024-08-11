import 'package:flutter/material.dart';
import 'package:twongere/util/app_buttons.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_styles.dart';

class SettingsScreen extends StatefulWidget{
  const SettingsScreen({super.key});


  @override
  SettingsScreenState createState () => SettingsScreenState();

}



class SettingsScreenState extends State<SettingsScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Settings", style: AppStyles.normalBlackTxtStyle,),
      ),


      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                const Center(child:CircleAvatar(
                  radius: 70,
                )),
                const SizedBox(height: 10,),
                const Center(child:Text(
                  "User Name",
                  style: AppStyles.normalBlackTxtStyle,
                )),
                const SizedBox(height: 20,),
                const Text(
                  "Account",
                  style: AppStyles.normalBoldBlackTxtStyle,
                ),
                const SizedBox(height: 10,),
                const SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child:Text(
                          "Edit Profile", style: AppStyles.normalGreyColorTxtStyle,)),
                        SizedBox(width: 10,),
                        Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                const SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child:Text(
                          "Subscribe", style: AppStyles.normalGreyColorTxtStyle,)),
                        SizedBox(width: 10,),
                        Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                const Text(
                  "Application Settings",
                  style: AppStyles.normalBoldBlackTxtStyle,
                ),
                const SizedBox(height: 10,),
                itemWidget("Primary Color"),
                itemWidget("App Notification"),
                itemWidget("Translation Language"),

                const SizedBox(height: 50,),
                DSolidButton(
                  label: "Login", 
                  btnHeight: 45, 
                  bgColor: AppColors.primarColor, 
                  borderRadius: 15, 
                  textStyle: AppStyles.normalWhiteTxtStyle, 
                  onClick: (){})

              ],
            )), )),
    );
  }


  Widget itemWidget(String label)
  => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: AppColors.greyColor
    ),
    margin: const EdgeInsets.symmetric(vertical: 10),
    padding: const EdgeInsets.all(7),
        child: Row(
          children: [
            Expanded(
              child:Text(
                label, style: AppStyles.normalBlackTxtStyle,)),
              const SizedBox(width: 10,),
              const Icon(Icons.keyboard_arrow_down_rounded)
          ],
        ),
      );
}