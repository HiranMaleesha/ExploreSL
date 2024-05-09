import 'package:flutter/material.dart';

class Polonnaruwa extends StatelessWidget {
  const Polonnaruwa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Flexible(
          child: Text(
            'Polonnaruwa',
            overflow: TextOverflow.ellipsis, // Handles overflow by ellipsis
          ),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'lib/images/pictures_d/p2.jpg', // Path to your image asset
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Add your content here
                Text(
                  'Polonnaruwa was the second capital of Sri Lanka after the destruction of Anuradhapura in 993 . It comprises, besides the Brahmanic monuments built by the Cholas, the monumental ruins of the fabulous garden-city created by Parakramabahu I in the 12th century.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
