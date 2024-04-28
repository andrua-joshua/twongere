import 'package:flutter/material.dart';
import 'package:twongere/util/app_fontsize.dart';

class CorneredButton  extends StatelessWidget{
  final String label;
  final Color bgColor;
  final Color txtColor;
  final Function() onClick;
  const CorneredButton({
    required this.label,
    required this.bgColor,
    required this.txtColor,
    required this.onClick,
    super.key
  });


  @override
  Widget build(BuildContext context){
    return  GestureDetector(
      onTap: () => onClick(), 
      child: Container(
        constraints: const BoxConstraints.expand(
          height: 45
        ),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: bgColor
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Center(
          child: Text(label, style: TextStyle(
            fontSize: AppFontSize.normalFontSize,
            color: txtColor,
            fontWeight: FontWeight.normal
          ),),
        ),

      ));
  }

}