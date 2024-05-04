import 'package:exploresl_login/pages/colombo.dart';
import 'package:exploresl_login/pages/galle.dart';
import 'package:exploresl_login/pages/kandy.dart';
import 'package:exploresl_login/pages/nuwaraeliya.dart';
import 'package:exploresl_login/pages/polonnaruwa.dart';
import 'package:exploresl_login/pages/sigiriya.dart';
import 'package:exploresl_login/pages/udawalawa.dart';
import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  final List<String> imagePaths = [
    "lib/images/destinations_page/Kandy,png.png",
    "lib/images/destinations_page/nuwaraeliya.png",
    "lib/images/destinations_page/galle.png",
    "lib/images/destinations_page/colombo.png.png",
    "lib/images/destinations_page/polonnaruwa,png.jpg",
    "lib/images/destinations_page/sigiriya.png",
    "lib/images/destinations_page/udawalawa.png",
  ];

  final List<Widget Function(BuildContext)> pageRoutes = [
    (context) => const Kandy(),
    (context) => const NuwaraEliya(),
    (context) => const galle(),
    (context) => const colombo(),
    (context) => const Polonnaruwa(),
    (context) => const Sigiriya(),
    (context) => const Udawalawa(),
  ];

  ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    const imageSize = Size(365, 200); // Set the desired image size
    const borderWidth = 2.0; // Set the border width
    const borderColor = Colors.black; // Set the border color

    return Scaffold(
      appBar: AppBar(
        title: const Text('Destinations'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: imagePaths.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: pageRoutes[index]),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(
                      borderWidth), // Add padding to contain the border
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: borderColor,
                      width: borderWidth,
                    ),
                    borderRadius:
                        BorderRadius.circular(8.0), // Add border radius
                  ),
                  width: imageSize.width,
                  height: imageSize.height,
                  child: Image.asset(
                    imagePaths[index],
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                    height: 10), // Adjust the height of SizedBox as needed
              ],
            ),
          );
        },
      ),
    );
  }
}
