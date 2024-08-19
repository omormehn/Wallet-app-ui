import 'package:flutter/material.dart';

class QuickBtn extends StatelessWidget {
  final image;
  final text;

  const QuickBtn({super.key, this.image, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon
        Container(
          height: 100,
          // margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 40)
              ]),
          child: Center(
            child: image,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        //text
        Text(
          text,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}