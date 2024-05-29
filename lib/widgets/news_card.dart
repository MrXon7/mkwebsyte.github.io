
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final  imageUrl;
  final String tag;
  final String title;
  final String date;

  CourseCard({
    required this.imageUrl,
    required this.tag,
    required this.title,
    required this.date,

  });

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size.width;
    return Stack(

      children: [
        Card(
          color: Color.fromRGBO(241, 240, 254, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: size>=520? Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    imageUrl,
                    width: size*0.3,
                    height: size*0.25,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.only(bottom: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 8),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ):
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(
                    imageUrl,
                    width: size*0.8,
                    height: size*0.7,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(bottom: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 8),

                      ],
                    ),
                  ),
                ),
              ],
            )
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