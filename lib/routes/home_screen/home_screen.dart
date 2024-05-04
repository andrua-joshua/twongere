import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:twongere/routes/home_screen/navigations/dictionary_screen/dictionary_screen.dart';
import 'package:twongere/routes/home_screen/navigations/home_nav/home_nav.dart';
import 'package:twongere/routes/home_screen/navigations/learn_screen/learn_screen.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_styles.dart';
import 'package:twongere/util/custom_widgets.dart';

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

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
     _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
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
      key: _scaffoldKey,
      appBar: AppBar(
          backgroundColor: AppColors.primarColor,
          leading: IconButton(
            onPressed:(){
              _openDrawer();
            } , 
            icon: const Icon(Icons.menu_rounded, color: Colors.white,)),

          title: Text(tabIndex==0?"Learn":tabIndex==1?"Twogere":"Dictionary", 
          style: AppStyles.titleWhiteTxtStyle,),
          centerTitle: true,

          actions: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.notifications, color: Colors.white,)),
          ],
        ),
        
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
        elevation: 5,
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

      drawer: SafeArea(
        child:Container(
                width: 300,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white
                ),
                child: const SideDrawerWidget(),
              )),
      
    );
  }
}