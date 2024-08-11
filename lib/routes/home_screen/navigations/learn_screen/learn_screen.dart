import 'package:flutter/material.dart';
import 'package:twongere/routes/home_screen/navigations/learn_screen/widgets/learn_nav_widgets.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_constansts.dart';
import 'package:twongere/util/app_styles.dart';

class LearnNav extends StatefulWidget{
  const LearnNav({super.key});

  @override
  LearnNavState createState ()=> LearnNavState();

}

class LearnNavState extends State<LearnNav>{
 
  

  @override
  Widget build(BuildContext context){
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: AppColors.bgGreyColor,
        //   title: const Text("Inclusive education"),
        //   centerTitle: true,
        // ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  Container(
                    constraints: const BoxConstraints.expand(height: 250),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    // margin: const EdgeInsets.all(10),
                  ),

                  const SizedBox(height: 10,),
                  SizedBox(
                    child: Row(
                      children: [
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "TOPIC: Introduction to ICT", 
                                maxLines: 1,
                                style: AppStyles.normalBoldBlackTxtStyle,
                                overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 2,),
                              Text(
                                AppConstansts.lontxt2, 
                                maxLines: 2,
                                style: AppStyles.normalBlackTxtStyle,
                                overflow: TextOverflow.ellipsis,),
                            ],
                          )),
                          const SizedBox(width: 20,),
                          Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              color: AppColors.greyColor
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Center(
                              child: Text(
                                "Gestures", style: AppStyles.normalBlackTxtStyle,),
                            ),
                          ),

                          const SizedBox(width: 10,),
                          Container(
                            height: 50,
                            decoration: const BoxDecoration(
                              color: AppColors.greyColor
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Center(
                              child: Text(
                                "Text", style: AppStyles.normalBlackTxtStyle,),
                            ),
                          ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20,),
                  const Text("More Content", style: AppStyles.normalBoldBlackTxtStyle,),
                  SizedBox(
                    child: Column(
                      children: List.generate(
                        5, (x)=> const UnitEducationContent()),
                    ),
                  ),
                ],
              ),
            ),)),

    );
  }

}