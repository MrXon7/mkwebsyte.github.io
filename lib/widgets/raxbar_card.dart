import 'package:flutter/material.dart';

class buildCard extends StatelessWidget {
  const buildCard({super.key, this.icon, this.title, this.description, this.width});

  final icon;
  final title;
  final description;
  final width;
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Container(
      width: width,
      height: 300,
      margin: EdgeInsets.symmetric(horizontal: size.width*0.06, vertical: 50),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
      decoration: BoxDecoration(
        color: Color.fromRGBO(241, 240, 254, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Positioned(
            top: -100,
            right: -100,
            child: ClipOval(
              child: Container(
                color: Colors.purple,
                width: 150,
                height: 150,
                child: Center(
                  child: Image(image: AssetImage(icon), fit: BoxFit.cover,)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
