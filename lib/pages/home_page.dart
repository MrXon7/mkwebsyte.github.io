import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/abautSection.dart';
import '../widgets/about_card.dart';
import '../widgets/header_section.dart';
import '../widgets/myappbar.dart';
import '../widgets/news_card.dart';
import '../widgets/newssection.dart';
import '../widgets/profile_card.dart';
import '../widgets/raxbar_card.dart';
import '../widgets/raxbar_section.dart';
import '../widgets/rounded_image.dart';
import '../widgets/studentsSection.dart';
import 'teachers_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              toolbarHeight: 80,
              title: AppBarTitle(size: size),
              backgroundColor: const Color.fromRGBO(123, 106, 218, 1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  // Body-Header and carousel section
                  HeaderSection(size: size),
                  // Raxbariyat section
                  SizedBox(height: 150,child: Center(child: Text("Maktab Raxbariyati", style:TextStyle(fontSize: size.width*0.05, fontWeight: FontWeight.bold)),),),
                  const Raxbar_section(),
                  // About Section
                  AbautSection(size: size),
                  SizedBox(height: 50,),
                  // Namunali o'quvchilar section
                  SizedBox(child: Center(child: Text("Namunali o'quvchilar", style:TextStyle(fontSize: size.width*0.05, fontWeight: FontWeight.bold)),),),
                  StudentsSection(size: size),
                  // News Section
                  SizedBox(child: Center(child: Text("Maktabda NimaGaplar", style:TextStyle(fontSize: size.width*0.05, fontWeight: FontWeight.bold)),),),
                  NewsSection(size: size),
                  SizedBox(height: 30),
                  Container(
                    width: size.width,
                    height: 200,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(123, 106, 218, 1),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(200), topRight: Radius.circular(200))
                    ),
                    child: Center(child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Developed by @alixonov_i", style: TextStyle(color: Colors.white),),
                        Text("Bog'lanish uchun +998(94) 457-4775 ga qo'ng'iroq qiling", style: TextStyle(color: Colors.white),),
                        SizedBox(height: 30,)
                      ],
                    )),
                  )
                ],
              ),
            )));
  }
}









