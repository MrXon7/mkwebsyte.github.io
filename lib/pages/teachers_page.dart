import 'package:flutter/material.dart';

class TeachersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('O\'qituvchilar Ro\'yxati'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Aliyev Anvar'),
            subtitle: Text('Matematika o\'qituvchisi'),
          ),
          ListTile(
            title: Text('Olimova Nodira'),
            subtitle: Text('Ingliz tili o\'qituvchisi'),
          ),
          // Qo'shimcha o'qituvchilarni qo'shishingiz mumkin
        ],
      ),
    );
  }
}
