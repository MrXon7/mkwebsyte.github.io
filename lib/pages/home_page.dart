import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/rounded_image.dart';
import 'teachers_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: 80,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: size.width*0.1,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Namangan viloyati To'raqo'rg'on tumani", style: Theme.of(context).textTheme.labelSmall!.apply(color: Colors.white)),
                     Text("58-Maktab", style: Theme.of(context).textTheme.headlineLarge!.apply(color: Colors.white),)
                  ],
                ),
               Row(
                 children: [
                   Text("Aloqa uchun: ", style: Theme.of(context).textTheme.bodyLarge!.apply(color: Colors.white)),
                      SizedBox(width: size.width*0.02,),
                   Text('Tel: +998(94)-457-4775', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white)),
                    SizedBox(width: size.width*0.02,),
                   Text('e-mail: mrxon73@gmail.com ', style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.white)),
                 ],
               )
              ],
            ),
          ),
          backgroundColor: const Color.fromRGBO(123, 106, 218, 1),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)
            ),
          ),
        ),
        body:SingleChildScrollView(child: Column(
              children: [
                // Body-carousel section
                Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(123, 106, 218, 1),
        borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(300)
                ),
      ),
      width: size.width,
      height: size.height*1,
      padding:  EdgeInsets.symmetric(horizontal: size.width*0.1, vertical: 50),
       child: CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1
        ),
        items: [
          Rounded_image(img_url: "carousel/carousel_1.jpg"),
          Rounded_image(img_url: "carousel/carousel_2.jpg"),
          Rounded_image(img_url: "carousel/carousel_3.jpg"),
        ],
       )),




                
                 Container(
                 
                  width: size.width,
                  height: size.height,
                   padding:  EdgeInsets.symmetric(horizontal: size.width*0.05, vertical: size.height*0.03),
                   child: const Text("Asosiy"),
                ),
              ],
            ),
    )));
  }
}

