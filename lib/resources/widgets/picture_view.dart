import 'package:flutter/material.dart';

class PictureView extends StatelessWidget {
  final String imageStr;
  const PictureView({Key? key, required this.imageStr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(15),
      //color: Colors.grey[50],
      decoration: BoxDecoration(
        //color: Colors.grey[50],
        border: Border.all(
          color: Colors.grey,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(imageStr, fit: BoxFit.contain,),
    );
  }
}
