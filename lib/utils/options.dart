import 'package:flutter/material.dart';

class HomeOptions extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  const HomeOptions(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        Row(
          children: [
            //icon
            Container(
              height: 70,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.deepPurple[400],
                  borderRadius: BorderRadius.circular(15)),
              child: Center(child: Image.asset(imagePath)),
            ),
            SizedBox(width: 20,),
            //texts
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(subtitle,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]))
              ],
            ),
          ],
        ),
        //arrow
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Icon(Icons.arrow_forward_ios,
                color: Colors.grey[400], size: 20),
          ),
        ),
      ],
    );
  }
}
