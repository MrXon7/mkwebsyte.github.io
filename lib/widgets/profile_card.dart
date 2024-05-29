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
    return Container(
      height: 300,
      width: size.width>=880? size.width*0.225:size.width*0.5,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
            color: Color.fromRGBO(241, 240, 254, 1)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                width: 150,
                height: 150,
                child: Image.network(imageUrl),
              ),
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
          ],
        ),
      ),
    );
  }}