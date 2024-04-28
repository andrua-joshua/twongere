import 'package:flutter/material.dart';
import 'package:twongere/routes/home_screen/navigations/dictionary_screen/dictionary_screen.dart';
import 'package:twongere/routes/home_screen/navigations/home_nav/home_nav.dart';
import 'package:twongere/routes/home_screen/navigations/learn_screen/learn_screen.dart';
import 'package:twongere/routes/home_screen/widgets/home_screen_widgets.dart';
import 'package:twongere/util/app_colors.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  _homeScreenState createState () => _homeScreenState();


}



class _homeScreenState extends State<HomeScreen>{

  int _currentIndex = 1;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:_currentIndex==2? const DictionaryNav():
      _currentIndex==0? const LearnNav(): const  HomeNav(),
      bottomNavigationBar: Container(
        constraints: const BoxConstraints.expand(height: 100),
        child:BottomNavBar(
        currentIndex: _currentIndex,
        onChange: (v){
          setState(() {
            _currentIndex= v;
          });
        },
      )),
      
    );
  }
}