import 'package:flutter/material.dart';
class BoldText extends StatelessWidget {
  final double  size;
  final String text;
  final Color color;
  bool isVeryBold=false;

  BoldText(this.text, this.size,this.color);
  BoldText.veryBold(this.text,this.size,this.color,this.isVeryBold);

  @override
  Widget build(BuildContext context) {
    return Text(text,style:TextStyle(fontFamily: "nunito" ,fontWeight: isVeryBold?FontWeight.w900: FontWeight.w700,color:color,fontSize: size));
  }
}

class NormalText extends StatelessWidget {
  final double  size;
  final String text;
  final Color color;

  NormalText(this.text,this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Text(text,style:TextStyle(fontFamily: "nunito" ,fontWeight:FontWeight.w300,color:color,fontSize: size));
  }
}