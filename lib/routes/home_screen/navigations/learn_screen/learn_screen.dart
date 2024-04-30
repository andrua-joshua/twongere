import 'package:flutter/material.dart';
import 'package:twongere/routes/home_screen/navigations/dictionary_screen/widgets/dictionary_nav_widget.dart';
import 'package:twongere/routes/home_screen/navigations/home_nav/tabs/text_trans_tab/widgets/text_trans_tab_widgets.dart';
import 'package:twongere/routes/home_screen/navigations/learn_screen/widgets/learn_nav_widgets.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_styles.dart';
import 'package:twongere/util/custom_widgets.dart';

class LearnNav extends StatefulWidget{
  const LearnNav({super.key});

  @override
  _learnNavState createState ()=> _learnNavState();

}

class _learnNavState extends State<LearnNav>{
 
 int _currentIndex = 0;
 List<String> drop = ["Sign langauge", "Luganda"];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
     _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          backgroundColor: AppColors.primarColor,
          leading: IconButton(
            onPressed:(){
              _openDrawer();
            } , 
            icon: const Icon(Icons.menu_rounded, color: Colors.white,)),
          
          title: const Text("Twogere", style: AppStyles.titleWhiteTxtStyle,),

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
            padding: const EdgeInsets.symmetric(
              horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10,),
                    SingleDropDownWidget(
                      list: const ["Sign language", "English", "Luganda"],
                      onChange: (v){
                        setState(() {
                          _currentIndex = v;
                        });
                      },),
                      _currentIndex==0? const SignLang(): const LangTranslate()  ///should be toggable
                  ],
                ),
              ),)),

              drawer: Container(
                width: 300,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
                child: const SideDrawerWidget(),
              ),
    );
  }

}