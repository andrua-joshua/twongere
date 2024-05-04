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

class _homeNavState extends State<HomeNav> with WidgetsBindingObserver{

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

      int _currentCamera = 0;



  @override
  Widget build(BuildContext context){
    return const  DefaultTabController(
      length: 5, 
      child: Scaffold(

        body: SafeArea(
          child:TextTransTab(),),

      ));
  }
}