import 'package:flutter/material.dart';
import 'package:twongere/route.dart';
import 'package:twongere/routes/pair_screen/widgets/paired_screen_widgets.dart';
import 'package:twongere/util/app_buttons.dart';
import 'package:twongere/util/app_colors.dart';
import 'package:twongere/util/app_styles.dart';

class SideDrawerWidget extends StatelessWidget{
  const SideDrawerWidget({super.key});


  @override
  Widget build(BuildContext context){
    return SafeArea(
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("My Profile", style: AppStyles.titleBlackTxtStyle,),
                const SizedBox(height: 10,), 
                const CircleAvatar(radius: 70,),
                const SizedBox(height: 10,), 
                const Text("Birungi Nelly", style: AppStyles.normalGreyColorTxtStyle,),
                const Text("shatunelly7@gmail.com", style: AppStyles.normalGreyColorTxtStyle,),
                const Text("0700000000", style: AppStyles.normalGreyColorTxtStyle,),
                const SizedBox(height: 20,),
                const Text(
                  "Account",
                  style: AppStyles.normalBoldBlackTxtStyle,
                ),
                const SizedBox(height: 10,),
                const SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child:Text(
                          "Edit Profile", style: AppStyles.normalGreyColorTxtStyle,)),
                        SizedBox(width: 10,),
                        Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                CorneredButton(
                  label: "Subscribe", 
                  bgColor: AppColors.primarColor, 
                  txtColor: AppColors.whiteColor, 
                  onClick: ()=> Navigator.pushNamed(context, RoutesGenerator.subscribeScreen)),

                const SizedBox(height: 40,),
                const Text(
                  "Application Settings",
                  style: AppStyles.normalBoldBlackTxtStyle,
                ),
                const SizedBox(height: 10,),
                itemWidget("Primary Color"),
                itemWidget("App Notification"),
                itemWidget("Translation Language"),

                const SizedBox(height: 50,),
                DSolidButton(
                  label: "Logout", 
                  btnHeight: 45, 
                  bgColor: AppColors.primarColor, 
                  borderRadius: 15, 
                  textStyle: AppStyles.normalWhiteTxtStyle, 
                  onClick: (){}),

                const SizedBox(height: 10,),
            const Text("A product of Cognosphere Dynamics Limited. \nLicensed by the Cognosphere Dynamics Limited",
            style: AppStyles.smallGreyTxtStyle,),
            const SizedBox(height: 10,),

              ],
            ),
          )),
          // GestureDetector(
          //   onTap: () => Navigator.pushNamed(context, RoutesGenerator.loginScreen), 
          //   child: const Text("LOGOUT", style: AppStyles.normalGreyColorTxtStyle,)),
            // const SizedBox(height: 10,),
            // const Text("A product of Cognosphere Dynamics Limited. \nLicensed by the Cognosphere Dynamics Limited",
            // style: AppStyles.smallGreyTxtStyle,)
      ],
    )); //
  }//.jsx /tsx

  Widget itemWidget(String label)
  => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: AppColors.greyColor
    ),
    margin: const EdgeInsets.symmetric(vertical: 10),
    padding: const EdgeInsets.all(7),
        child: Row(
          children: [
            Expanded(
              child:Text(
                label, style: AppStyles.normalBlackTxtStyle,)),
              const SizedBox(width: 10,),
              const Icon(Icons.keyboard_arrow_down_rounded)
          ],
        ),
      );

}






class DropdownMenuWidget extends StatefulWidget {
  final List<String> list;
  const DropdownMenuWidget({super.key, required this.list});

  @override
  State<DropdownMenuWidget> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuWidget> {
  late String dropdownValue = widget.list.first;

  @override
  void initStatw(){
    super.initState();

    dropdownValue = widget.list.first;

  }

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: 120,
      // menuHeight: 40,
      
      initialSelection: widget.list.first,
      onSelected: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: widget.list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}




class DropdownButtonWidget extends StatefulWidget {
  final List<String> list;
  const DropdownButtonWidget({super.key, required this.list});

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonWidget> {
  late String dropdownValue = widget.list.first;

  @override
  void initState(){
    super.initState();

    dropdownValue = widget.list.first;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      // icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: AppStyles.normalBlackTxtStyle,
      underline: Container(),
      // isExpanded: true,
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: widget.list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}




class Cordionwidget extends StatefulWidget{
  final List<String> list;
  const Cordionwidget({super.key, required this.list});

  @override
  _cordionWidgetState createState() => _cordionWidgetState();

}

class _cordionWidgetState extends State<Cordionwidget>{

  bool _isVisible = false;
  late String _first = widget.list.first;
  late String _second = widget.list.last;
  int? _caller;


  @override
  void initState(){
    super.initState();


  }
   
  @override
  void dispose(){

    super.dispose();
    
  }

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder:(context, constraints) {
        
        double width = constraints.maxWidth*0.45;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              SizedBox(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _isVisible = !_isVisible;
                            _caller = 0;
                          });
                        },
                        child:SizedBox(
                        width: width,  
                        child: Row(
                          children: [
                            const CircleAvatar(radius: 20,),
                            const SizedBox(width: 5,),
                            Expanded(
                              child:Text(
                                _first, 
                                style: AppStyles.normalBlackTxtStyle, 
                                overflow: TextOverflow.ellipsis,))
                          ],
                        ),
                      )),

                      const Icon(Icons.compare_arrows_rounded, color: AppColors.blackColor,),

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _isVisible = !_isVisible;
                            _caller = 1;
                          });
                        },
                        child:SizedBox(
                        width: width,  
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                _second, 
                                textAlign: TextAlign.end,
                                style:  AppStyles.normalBlackTxtStyle, overflow: TextOverflow.ellipsis,)
                                ),
                            const SizedBox(width: 5,),
                            const CircleAvatar(radius: 20,),
                          ],
                        ),
                      )),

                    ],
                  ),
              ),
              _isVisible?const SizedBox(height: 10,):const SizedBox(),
              _isVisible? SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    widget.list.length, 
                    (index) => GestureDetector(
                      onTap: (){
                        setState(() {
                          _caller==0?
                          _first =  widget.list[index]
                          :_second =  widget.list[index];
                        _isVisible = false;
                        });
                      },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10
                      ),
                      child: Text(widget.list[index], style: AppStyles.normalBlackTxtStyle,),),
                    )),
                ),
              ): const SizedBox()

          ],
        );
      },);
  }

}



class SingleDropDownWidget extends StatefulWidget{
  final List<String> list;
  final Function(int)? onChange;
  const SingleDropDownWidget({
    required this.list,
    this.onChange,
    super.key
  });


  @override
  _singleDropDownWidgetState createState () => _singleDropDownWidgetState();

}


class _singleDropDownWidgetState extends State<SingleDropDownWidget>{

  late String _strValue = widget.list.first;
  bool _isVisible = false;
  int _index = 0;

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(
      builder:(context, constraints) {
        double width = constraints.maxWidth;

        return Column(
              children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isVisible= !_isVisible;
                      });
                    },
                    child:Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.bgGreyColor
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        const CircleAvatar(radius: 20,),
                        const SizedBox(width:  10,),
                        Expanded(
                          child: Text(
                            _strValue, style: AppStyles.normalPrimaryColorTxtStyle,)),
                        const SizedBox(width:  10,),
                        const Icon(Icons.keyboard_arrow_down, color: AppColors.blackColor,),
                        const SizedBox(width:  10,),
                      ],
                    ),
                  )),
                  const SizedBox(height: 10,),
                      _isVisible? Container(
                        color: AppColors.bgGreyColor,
                        width: width,       
                        padding: const EdgeInsets.all(10),          
                        child:SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            widget.list.length, 
                            (index) => GestureDetector(
                              onTap: (){
                                setState(() {
                                _strValue =  widget.list[index];
                                _isVisible = false;
                                _index = index;
                                widget.onChange!=null? widget.onChange!(index):null;
                                });
                              },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10
                              ),
                              child: Text(
                                widget.list[index], 
                                style: AppStyles.normalBlackTxtStyle,),),
                            )),
                        ),
                      )): const SizedBox()
              ],
            );
      }, );
  }
}


class PairDialogWidget extends StatefulWidget{
  const PairDialogWidget({super.key});


  @override
  _pairDialogWidgetState createState() => _pairDialogWidgetState();

}


class _pairDialogWidgetState extends State<PairDialogWidget>{


  late final TextEditingController _userEmailController;


  @override
  void initState(){
    super.initState();

    _userEmailController = TextEditingController();

  }

  @override
  void dispose(){
    _userEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.bgGreyColor
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        controller: _userEmailController,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText:  "Enter user email",
        ),
      ),
    );
  }
}



class SwitchablePairedScreen extends StatefulWidget{
  final bool isInitiator;
  final Function(bool) onSwitched;
  const SwitchablePairedScreen({
    super.key, 
    required this.onSwitched,
    required this.isInitiator});

  @override
  _switchablePairedScreen createState () => _switchablePairedScreen();
}

class _switchablePairedScreen extends State<SwitchablePairedScreen>{

  @override
  Widget build(BuildContext context){
    return const TextInfoComponent();
  }

}