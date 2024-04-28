import 'package:flutter/material.dart';
import 'package:twongere/util/app_buttons.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_styles.dart';
import 'package:twongere/util/custom_widgets.dart';

class LessonDetailsScreen extends StatelessWidget{
  const LessonDetailsScreen({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.primarColor,
          leading: IconButton(
            onPressed:()=> Navigator.pop(context) , 
            icon: const Icon(Icons.arrow_back, color: Colors.white,)),
          
          title: const Text("Food lesson", style: AppStyles.titleWhiteTxtStyle,),

          actions: [

            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.stadium_rounded, color: Colors.white,)),

            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.notifications, color: Colors.white,)),
          ],
        ),


        body:  SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30,),
                    const Text("Quick search Character, word, or sentence", style: AppStyles.normalGreyColorTxtStyle,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: AppColors.bgGreyColor
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      children: [
                        Expanded(
                          child:Text(
                            "Orange", 
                            overflow: TextOverflow.ellipsis ,
                            style: AppStyles.normalGreyColorTxtStyle,)),
                        SizedBox(width: 10,),
                        Icon(Icons.search, color: AppColors.primarColor, size: 30,)
                        ],
                       ),
                      ),

                      const SizedBox(height: 30,),
                      const SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Orange", style: AppStyles.normalGreyColorTxtStyle,),
                            Text("Oranges", style: AppStyles.normalGreyColorTxtStyle,),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.bgGreyColor,
                        ),
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          children: [
                            const SizedBox(height: 20,),
                            const CircleAvatar(radius: 70),
                            const SizedBox(height: 20,),
                            Container(
                              constraints: const BoxConstraints.expand(
                                height: 300
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.whiteColor
                              ),
                              child: const Center(
                                child: Text("Orange Sign or Gesture", style: AppStyles.normalGreyColorTxtStyle,),
                              ),
                            )
                          ],
                        ),
                      ),

                      const SizedBox(height: 30,),
                      CorneredButton(
                        label: "More subject expressions >>>", 
                        bgColor: AppColors.primarColor, 
                        txtColor: AppColors.whiteColor, 
                        onClick: (){})
                ],
              ),
            ),
          )),

          
    );
  }
}