import 'package:flutter/material.dart';

import 'raxbar_card.dart';

class Raxbar_section extends StatelessWidget {
  const Raxbar_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top:50.0,),
      child: size>=880? Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildCard(
            width: size*0.2,
            icon: 'images/avatar.jpg',
            title: 'Direktor',
            description: "Direktor haqida ma'lumotlar",
          ),
          buildCard(
            width: size*0.2,
            icon: 'images/avatar.jpg',
            title: "O'IBDO'",
            description: "O'IBDO' haqida ma'lumotlar",
          ),
          buildCard(
            width: size*0.2,
            icon: 'images/avatar.jpg',
            title: 'MMIBDO\'',
            description: "MMIBDO' haqida mal'lumotlar",
          ),

        ],
      ):Column(
        children: <Widget>[
          buildCard(
            width: size*0.4,
            icon: 'images/avatar.jpg',
            title: 'Direktor',
            description: "Direktor haqida ma'lumotlar",
          ),
          buildCard(
            width: size*0.4,
            icon: 'images/avatar.jpg',
            title: "O'IBDO'",
            description: "O'IBDO' haqida ma'lumotlar",
          ),
          buildCard(
            width: size*0.4,
            icon: 'images/avatar.jpg',
            title: 'MMIBDO\'',
            description: "MMIBDO' haqida mal'lumotlar",
          ),
        ],
      )
    );
  }
}