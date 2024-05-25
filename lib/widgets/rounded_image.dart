import 'package:flutter/material.dart';

class Rounded_image extends StatelessWidget {
  const Rounded_image({
    super.key, 
    this.img_url="carousel/carousel_1.jpg",
  });

 
  final img_url;

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.all(50),
        child: ClipRRect(borderRadius: BorderRadius.circular(30), child:  Image(image: AssetImage(img_url), fit: BoxFit.cover,))
    );
  }
}
