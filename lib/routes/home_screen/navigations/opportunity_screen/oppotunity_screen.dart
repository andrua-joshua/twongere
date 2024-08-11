import 'package:flutter/material.dart';
import 'package:twongere/routes/home_screen/navigations/opportunity_screen/widgets/opportunity_screen_widgets.dart';
import 'package:twongere/util/app_styles.dart';

class OpportunityScreen extends StatefulWidget{
  const OpportunityScreen({super.key});


  @override
  OpportunityScreenState createState () => OpportunityScreenState();

}



class OpportunityScreenState extends State<OpportunityScreen>{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            const TopWidget(),
            const SizedBox(height: 20,),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Small description here", style: AppStyles.smallBlackTxtStyle,),
                  const SizedBox(height: 20,),
                  SizedBox(
                    child: Column(
                      children: List.generate(
                        7, (x) => const UnitOpportunityItem()),
                    ),
                  )
                ],
              )),
            )
          ],
        ),
      )),
    );
  }
}