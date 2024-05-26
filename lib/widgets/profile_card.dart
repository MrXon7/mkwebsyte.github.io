import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String name;

  ProfileCard({
    required this.imageUrl,
    required this.title,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage(imageUrl),
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 5),
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     IconButton(
            //       icon: Icon(Icons.facebook),
            //       onPressed: () {},
            //     ),
            //     IconButton(
            //       icon: Icon(Icons.twitter),
            //       onPressed: () {},
            //     ),
            //     IconButton(
            //       icon: Icon(Icons.linkedin),
            //       onPressed: () {},
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }}