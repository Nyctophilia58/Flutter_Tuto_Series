import 'dart:io';

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Image From Assets",
            style: TextStyle(
              fontSize: 20,
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(
            child: Image.asset(
              "assets/images/cloud.jpeg",
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Image From Network",
            style: TextStyle(
              fontSize: 20,
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(
            child: Image.network(
              "https://picsum.photos/250?image=9",
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Circle Avatar Image",
            style: TextStyle(
              fontSize: 20,
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                "https://picsum.photos/250?image=9",
              ),
            ),
          ),
        ],
      ),
    );
  }
}