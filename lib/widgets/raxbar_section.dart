import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'raxbar_card.dart';

class Raxbar_section extends StatelessWidget {
  const Raxbar_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top:50.0, right: 50),
      child: size>=880? Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: buildCard(
              width: size*0.2,
              icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png',
              title: 'Direktor',
              description: "Direktor haqida ma'lumotlar",
            ),
          ),
          Expanded(
            child: buildCard(
              width: size*0.2,
              icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png',
              title: "O'IBDO'",
              description: "O'IBDO' haqida ma'lumotlar",
            ),
          ),
          Expanded(
            child: buildCard(
              width: size*0.2,
              icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png',
              title: 'MMIBDO\'',
              description: "MMIBDO' haqida mal'lumotlar",
            ),
          ),

        ],
      ):Column(
        children: <Widget>[
          buildCard(
            // width: size*0.4,
            icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png',
            title: 'Direktor',
            description: "Direktor haqida ma'lumotlar",
          ),
          buildCard(
            width: size*0.4,
            icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png',
            title: "O'IBDO'",
            description: "O'IBDO' haqida ma'lumotlar",
          ),
          buildCard(
            width: size*0.4,
            icon: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png',
            title: 'MMIBDO\'',
            description: "MMIBDO' haqida mal'lumotlar",
          ),
        ],
      )
    );
  }
}