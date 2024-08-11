import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twongere/route.dart';
import 'package:twongere/util/app_styles.dart';

class TopWidget extends StatefulWidget{
  const TopWidget({super.key});

  @override
  TopWidgetState createState () => TopWidgetState();
}


class TopWidgetState extends State<TopWidget>{

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: SimpleSliderCarousel(),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              child: LayoutBuilder(
                builder:(context, constraints) {
                  double width = constraints.maxWidth;

                  return SizedBox(
                    child: Padding(
                      padding:  const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment:  CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 100,
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(
                              15
                            )
                          ),
                        ),
                        const SizedBox(width: 20,),
                        const Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.local_activity),
                                      SizedBox(width: 4,),
                                      Text("Information", style:  AppStyles.normalBlackTxtStyle,)
                                    ],
                                  ),
                                ),

                                const SizedBox(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.local_activity),
                                      SizedBox(width: 4,),
                                      Text("Information", style:  AppStyles.normalBlackTxtStyle,)
                                    ],
                                  ),
                                )
                            ],
                          )))
                      ],
                    )),
                  );
                },),
            ),
          )
        ],
      ),
    );
  }
}




class SimpleSliderCarousel extends StatelessWidget{
  const SimpleSliderCarousel({super.key});


  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          height: 250.0,
          viewportFraction: 1
          ),
        items: [1,2,3,4,5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 1.0),
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  )
                ),
                child: Text('text $i', style: const TextStyle(fontSize: 16.0),)
              );
            },
          );
        }).toList(),
      );
  }
}


class UnitOpportunityItem extends StatefulWidget{
  const UnitOpportunityItem({super.key});

  @override
  UnitOpportunityItemState createState () => UnitOpportunityItemState();

}


class UnitOpportunityItemState extends State<UnitOpportunityItem>{

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> Navigator.pushNamed(context, RoutesGenerator.jobDetailsScreen),
      child:Row(
      children: [
        Container(
          width: 70,
          height: 100,
          margin: const EdgeInsets.symmetric(vertical: 17),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey
          ),
        ),
        const SizedBox(width:  10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                SizedBox(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Deadline-Date", style: AppStyles.normalBlackTxtStyle,),
                            SizedBox(height: 10,),
                            Text("Longer decriptive text goes over here for viewers", 
                                style: AppStyles.normalBlackTxtStyle,
                                maxLines: 3,),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.favorite, color: Colors.orange,))
                    ],
                  ),
                ),
                const SizedBox(height: 5,),
                const SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                )  
            ],
          ))
      ],
    ));
  }

}