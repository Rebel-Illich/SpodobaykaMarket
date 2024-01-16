import 'package:flutter/material.dart';


class SubCategProducts extends StatelessWidget {
  final String mainCategName;
  final String subCategName;

  const SubCategProducts({super.key,  required this.subCategName,  required this.mainCategName});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new
          ), onPressed: () {
            Navigator.pop(context);
        },
        ),
        title: Text(
            subCategName,
            style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Center(child: Text(mainCategName)),
    );
  }
}

