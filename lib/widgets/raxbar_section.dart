import 'package:flutter/material.dart';

import 'raxbar_card.dart';

class Raxbar_section extends StatelessWidget {
  const Raxbar_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:50.0,),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildCard(
            icon: 'images/avatar.jpg',
            title: 'Direktor',
            description: 'Whenever you need free templates in HTML CSS, you just remember TemplateMo website.',
          ),
          buildCard(
            icon: 'images/avatar.jpg',
            title: "O'IBDO'",
            description: 'You can browse free templates based on different tags such as digital marketing, etc.',
          ),
          buildCard(
            icon: 'images/avatar.jpg',
            title: 'MMIBDO\'',
            description: 'You can start learning HTML CSS by modifying free templates from our website too.',
          ),

        ],
      ),
    );
  }
}