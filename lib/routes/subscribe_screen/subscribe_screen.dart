import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twongere/util/app_buttons.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_styles.dart';

class SubscribeScreen extends StatefulWidget{
  const SubscribeScreen({super.key});


  @override
  _subscribeScreenState createState() => _subscribeScreenState();

}

class _subscribeScreenState extends State<SubscribeScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.primarColor,
          leading: IconButton(
            onPressed:()=> Navigator.pop(context) , 
            icon: const Icon(Icons.arrow_back, color: Colors.white,)),
          
          title: const Text("SUBSCRIBE", style: AppStyles.titleWhiteTxtStyle,),

          actions: [

            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.stadium_rounded, color: Colors.white,)),

            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.notifications, color: Colors.white,)),
          ],
        ),


        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 150,),
                  const Center(child:Text("SUBSCRIBE", style: AppStyles.titleBlackTxtStyle,) ),
                  const SizedBox(height: 20,),
                  const Text("Select Network", style: AppStyles.normalGreyColorTxtStyle,),
                  SizedBox(height: 5,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.bgGreyColor,
                      borderRadius: BorderRadius.circular(60)
                    ),
                    padding: const EdgeInsets.all(7),
                    child: Row(
                      children: [
                        Icon(Icons.transfer_within_a_station_rounded, size: 30,),
                        SizedBox(width: 10,),
                        Expanded(child: const Text("Select Network", style: AppStyles.titlePrimaryTxtStyle,),),
                        SizedBox(width: 10,),
                        Icon(Icons.keyboard_arrow_down_outlined, size: 30, color: AppColors.primarColor,),

                      ],        
                    ),
                  ),

                  const SizedBox(height: 20,),
                  const Text("Select Plan", style: AppStyles.normalGreyColorTxtStyle,),
                  SizedBox(height: 5,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.bgGreyColor,
                      borderRadius: BorderRadius.circular(60)
                    ),
                    padding: const EdgeInsets.all(7),
                    child: Row(
                      children: [
                        Icon(Icons.change_circle_outlined, size: 30,),
                        SizedBox(width: 10,),
                        Expanded(child: const Text("1 Day", style: AppStyles.titlePrimaryTxtStyle,),),
                        SizedBox(width: 10,),
                        Icon(Icons.keyboard_arrow_down_outlined, size: 30, color: AppColors.primarColor,),

                      ],        
                    ),
                  ),



                  const SizedBox(height: 20,),
                  // const Text("Select Plan", style: AppStyles.normalGreyColorTxtStyle,),
                  // SizedBox(height: 5,),
                  Container(
                    constraints: const BoxConstraints.expand(height: 50,),
                    decoration: BoxDecoration(
                      color: AppColors.bgGreyColor,
                      borderRadius: BorderRadius.circular(60)
                    ),
                    padding: const EdgeInsets.all(7),
                    child: const Center(child:Text("Enter mobile number", style: AppStyles.normalGreyColorTxtStyle,))
                  ),


                  const SizedBox(height: 20,),
                  // const Text("Select Plan", style: AppStyles.normalGreyColorTxtStyle,),
                  // SizedBox(height: 5,),
                  Container(
                    constraints: const BoxConstraints.expand(height: 50,),
                    decoration: BoxDecoration(
                      color: AppColors.bgGreyColor,
                      borderRadius: BorderRadius.circular(60)
                    ),
                    padding: const EdgeInsets.all(7),
                    child: const Center(child:Text("Enter Amount", style: AppStyles.normalGreyColorTxtStyle,))
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(
                    child: CorneredButton(
                      label: "Process Payment >>>>", 
                      bgColor: AppColors.primarColor, 
                      txtColor: AppColors.whiteColor, 
                      onClick: (){}),
                  )
                ],
              ),
            ),)),

    );
  }
}