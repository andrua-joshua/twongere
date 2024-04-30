import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:twongere/routes/home_screen/navigations/dictionary_screen/dictionary_screen.dart';
import 'package:twongere/routes/home_screen/navigations/home_nav/home_nav.dart';
import 'package:twongere/routes/home_screen/navigations/learn_screen/learn_screen.dart';
import 'package:twongere/util/app_colors.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  _homeScreenState createState () => _homeScreenState();


}



class _homeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  int _currentIndex = 1;

  int _tabIndex = 1;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // body:_currentIndex==2? const DictionaryNav():
      // _currentIndex==0? const LearnNav(): const  HomeNav(),
      bottomNavigationBar: CircleNavBar(
        activeIcons: const [
          Icon(Icons.layers_outlined, color: AppColors.primarColor),
          Icon(Icons.translate, color: AppColors.primarColor),
          Icon(Icons.ac_unit_outlined, color: AppColors.primarColor),
        ],
        inactiveIcons: const [
          Text("Learn"),
          Text("Home"),
          Text("Dictionary"),
        ],
        color: Colors.white,
        height: 60,
        circleWidth: 60,
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          pageController.jumpToPage(tabIndex);
        },
        padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: AppColors.primarColor,
        elevation: 10,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: const [
          LearnNav(),
          HomeNav(),
          DictionaryNav(),
        ],
      ),
      
      
      
      // ConvexAppBar(
      //   backgroundColor : AppColors.bgGreyColor,
      //   curveSize: 90,
      //   elevation: 80,
      //   top: -40,
      //   color: AppColors.blackColor,
      //   activeColor: AppColors.primarColor,
      //   style: TabStyle.fixed,
      //   items: const [
      //     TabItem(icon: Icons.photo_camera, title: "Learn"),
      //     TabItem(icon: Icons.translate, ),
      //     TabItem(icon: Icons.mic, title: "Dictionary"),
      //   ],
      //   initialActiveIndex: _currentIndex,
      //   onTap: (int i){
      //     setState(() {
      //       _currentIndex = i;
      //   });
      //   },
      // ),
      
    );
  }
}