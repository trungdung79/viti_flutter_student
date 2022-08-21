import 'package:flutter/material.dart';

class BarButton extends StatelessWidget {
  final String buttonText;
  const BarButton({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 5, bottom: 5,),
      //color: Colors.grey[50],
      decoration: BoxDecoration(
        //color: Colors.grey[50],
        border: Border.all(
          color: Colors.yellow,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text(buttonText, style: const TextStyle(color: Colors.white,),),
    );
  }
}
