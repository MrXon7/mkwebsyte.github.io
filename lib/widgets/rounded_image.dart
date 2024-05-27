import 'dart:ui';

import 'package:flutter/material.dart';

class Rounded_image extends StatelessWidget {
  const Rounded_image({
    super.key, 
    this.img_url="carousel/carousel_1.jpg", this.title, this.subtitle,
  });

 
  final img_url;
  final title;
  final subtitle;

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Container(
        width: size.width*0.7,
        // height: size.height*0.5,
        child: ClipRRect(borderRadius: BorderRadius.circular(30), child:  Container(
          decoration: BoxDecoration(
            image:   DecorationImage(
              image: AssetImage(img_url),
              fit: BoxFit.cover,
            ),
          ),
          child:  BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: Container(
              color: Colors.black.withOpacity(0.7),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: size.width*0.045,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                         subtitle,
                          style: TextStyle(fontSize: size.width*0.02,  color: Colors.white),

                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),))
    );
  }
}
