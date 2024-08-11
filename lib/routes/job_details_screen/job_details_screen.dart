
import 'package:flutter/material.dart';
import 'package:twongere/util/app_buttons.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_constansts.dart';
import 'package:twongere/util/app_styles.dart';

class JobDetailsScreen extends StatefulWidget{
  const JobDetailsScreen({super.key});


  @override
  JobDetailsScreenState createState () => JobDetailsScreenState();
}


class JobDetailsScreenState extends State<JobDetailsScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Job details",style: AppStyles.titleBlackTxtStyle,),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints: const BoxConstraints.expand(height: 250),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
                ),
                margin: const EdgeInsets.all(10),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Cognosphere dynamics Limited", style: AppStyles.smallBlackTxtStyle,),
                    const SizedBox(height: 5,),
                    const SizedBox(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.location_on),
                                SizedBox(width: 5,),
                                Text("Kampala", style: AppStyles.normalBlackTxtStyle,)
                              ],
                            ),
                          ),
                          SizedBox(width: 30,),
                          SizedBox(
                            child: Row(
                              children: [
                                Icon(Icons.currency_exchange_sharp),
                                SizedBox(width: 5,),
                                Text("500,000 USH", style: AppStyles.normalBlackTxtStyle,)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    const SizedBox(height: 10,),
                    const Text("Description", style: AppStyles.normalBoldBlackTxtStyle,),
                    const Text(AppConstansts.longTxt, style: AppStyles.normalBlackTxtStyle,),

                    const SizedBox(height: 20,),
                    const Text("Qualification", style: AppStyles.normalBoldBlackTxtStyle,),
                    const Text(AppConstansts.lontxt2, style: AppStyles.normalBlackTxtStyle,),
                    const SizedBox(height: 50,),
                    DSolidButton(
                      label: "Apply Now", 
                      btnHeight: 45, 
                      bgColor: AppColors.primarColor, 
                      borderRadius: 15, 
                      textStyle: AppStyles.normalWhiteTxtStyle, 
                      onClick: (){})
                  ],
                ),
              )

            ],
          ),
        )),
    );
  }
}