import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width*0.1,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Namangan viloyati To'raqo'rg'on tumani", style: Theme.of(context).textTheme.labelSmall!.apply(color: Colors.white)),
              Text("58-MAKTAB", style: Theme.of(context).textTheme.headlineLarge!.apply(color: Colors.white),)
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
    );
  }
}