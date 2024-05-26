import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String imageUrl;
  final String tag;
  final String title;
  final String date;
  final String duration;
  final String price;

  CourseCard({
    required this.imageUrl,
    required this.tag,
    required this.title,
    required this.date,
    required this.duration,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Card(
          color: Color.fromRGBO(241, 240, 254, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    imageUrl,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            right: 10,
            child: Text('Date: $date')),
      ],
    );
  }
}