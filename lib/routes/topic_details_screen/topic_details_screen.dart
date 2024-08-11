import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:twongere/util/app_buttons.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_constansts.dart';
import 'package:twongere/util/app_styles.dart';
import 'package:video_player/video_player.dart';

class TopicDetailsScreen extends StatefulWidget{
  const TopicDetailsScreen({super.key});

  @override
  TopicDetailsScreenState createState () => TopicDetailsScreenState();
}


class TopicDetailsScreenState extends State<TopicDetailsScreen>{
  VideoPlayerController xcontroller = VideoPlayerController.networkUrl(
    Uri.parse("uri")
  );

  VideoPlayerController controller = VideoPlayerController.asset("assets/videos/earthena.mp4");

  bool isText = false;

  @override
  void initState() {

    super.initState();

    
    controller.setLooping(true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "TOPIC: Introduction to ICT",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.normalBoldBlackTxtStyle,),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Expanded(
                child: isText? textWidget(): gestureWidget()),
              const SizedBox(height: 10,),
              SizedBox(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){}, 
                      icon: const Icon(Icons.arrow_back_ios)),
                    Expanded(
                      child: DSolidButton(
                        label: isText?"Use Gesture": "Read Text", 
                        btnHeight: 45, 
                        bgColor: AppColors.bgGreyColor, 
                        borderRadius: 20, 
                        textStyle: AppStyles.normalBlackTxtStyle, 
                        onClick: (){
                          setState(() {
                            isText = !isText;
                          });
                        })),
                    IconButton(
                      onPressed: (){}, 
                      icon: const Icon(Icons.arrow_forward_ios))
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              isText? const SizedBox() : DSolidButton(
                label: "Download to storage", 
                btnHeight: 45, 
                bgColor: AppColors.primarColor, 
                borderRadius: 20, 
                textStyle: AppStyles.normalWhiteTxtStyle, 
                onClick: (){}),
              const SizedBox(height: 10,),
            ],
          ),)),
    );
  }


  Widget gestureWidget()
   => Container(
    constraints: const BoxConstraints.expand(),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: AppColors.bgGreyColor
    ),
    child: FutureBuilder(
      future: controller.initialize(), 
      builder: (context, snapshot) {
        
        if(snapshot.connectionState == ConnectionState.done){
          controller.play();
          return VideoPlayer(controller);
        }

        if(snapshot.hasError){
          return const Text("Error loading video");
        }

        return const Center(
          child: SizedBox(
            height: 40,
            width: 40,
            child: CircularProgressIndicator(),
          ),
        );
      }, )
   );

  Widget textWidget ()
   => Container(
    constraints: const BoxConstraints.expand(),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.grey, width: 0.5
      )
    ),
    padding: const EdgeInsets.all(10),
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "English", style: AppStyles.normalBoldBlackTxtStyle,),

        SizedBox(height: 10,),
        Expanded(
          child: SingleChildScrollView(
            child: Text(
            AppConstansts.longTxt+AppConstansts.lontxt2,
            style: AppStyles.normalBlackTxtStyle,
            ),
          ))
      ],
    ),
   );
}