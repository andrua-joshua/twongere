import 'package:flutter/material.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_styles.dart';

class TextInputWidget extends StatelessWidget{
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  const TextInputWidget({ 
    required this.controller, 
    required this.hintText,
    required this.isPassword,
    super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.bgGreyColor, width: 2)
      ),

      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller:  controller,
        obscureText: isPassword,
        obscuringCharacter: "*",
        decoration: InputDecoration(
         border: InputBorder.none,
         hintText: hintText,
         hintStyle: AppStyles.normalGreyColorTxtStyle
        ),
      ),
    );
  }
}




class PhoneInputWidget extends StatelessWidget{
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  const PhoneInputWidget({ 
    required this.controller, 
    required this.hintText,
    required this.isPassword,
    super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.bgGreyColor, width: 2)
      ),

      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Row(
        children: [
          TextButton(
            onPressed: (){}, 
            child: const Text("+256", style: AppStyles.normalBlackTxtStyle,)),
            Container(
              width: 2,
              height: 30,
              color: AppColors.bgGreyColor,
            ),
            const SizedBox(width: 5,),
          Expanded(
            child:TextFormField(
        controller:  controller,
        obscureText: isPassword,
        obscuringCharacter: "*",
        decoration: InputDecoration(
         border: InputBorder.none,
         hintText: hintText,
         hintStyle: AppStyles.normalGreyColorTxtStyle
        ),
      ))
        ],
      ),
    );
  }
}