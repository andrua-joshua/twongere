import 'package:flutter/material.dart';
import 'package:twongere/routes/home_screen/navigations/home_nav/tabs/text_trans_tab/text_trans_tab.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_styles.dart';
import 'package:twongere/util/custom_widgets.dart';

class HomeNav extends StatefulWidget{
  const HomeNav({super.key});

  @override
  _homeNavState createState ()=> _homeNavState();
  
}

class _homeNavState extends State<HomeNav> {

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    void _openDrawer() {
      _scaffoldKey.currentState!.openDrawer();
    }

    void _closeDrawer() {
      Navigator.of(context).pop();
    }


  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 5, 
      child: Scaffold(
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

        body:   const SafeArea(
          child:TextTransTab(),),

        drawer: Container(
                width: 300,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
                child: const SideDrawerWidget(),
              ),
      ));
  }
}