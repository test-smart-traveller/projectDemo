import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ProfileGPage extends StatelessWidget {
  const ProfileGPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bgimage.jpg'),
            fit: BoxFit.fitHeight,
            colorFilter: ColorFilter.mode(
                Color.fromARGB(52, 208, 205, 205), BlendMode.darken),
          ),
        ),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(0, 255, 252, 252),
          body: ListView(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 235,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60)),
                  color: Color.fromARGB(225, 7, 7, 7),
                  gradient: RadialGradient(colors: [
                    Color.fromARGB(113, 56, 54, 54),
                    Color.fromARGB(221, 128, 121, 121),
                    Color.fromARGB(255, 81, 76, 76),
                    Color.fromARGB(239, 8, 8, 8)
                  ], center: Alignment(0.0, -1.6), focalRadius: 6.0),
                ),
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            height: 100,
                            width: 100,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage('assets/images/guiderp.jpg')),
                            ),
                          ),
                        ],
                      ),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: const Text(
                          'Themiya Dissanayake',
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 23.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // ignore: avoid_unnecessary_containers
                      // Container(
                      //   margin: const EdgeInsets.only(top: 4),
                      //   child: const Text(
                      //     'thedisa@gmail.com',
                      //     style: TextStyle(
                      //       //fontWeight: FontWeight.bold,
                      //       fontSize: 15.0,
                      //       color: Colors.white,
                      //       //height: 0.00001,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 90,
              ),
            ],
          ),
          bottomNavigationBar: const GNav(
            backgroundColor: Color.fromARGB(152, 0, 0, 0),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Color.fromARGB(107, 98, 100, 98),
            padding: EdgeInsets.all(13),
            tabMargin: EdgeInsets.all(10),
            // onTabChange: (index) {
            //   print(index);
            // },
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                iconSize: 35,
                text: 'Home',
              ),
              GButton(
                icon: Icons.place_outlined,
                iconSize: 35,
                text: 'Location',
              ),
              // GButton(
              //   icon: Icons.favorite_border_outlined,
              //   text: 'Likes',
              // ),
              GButton(
                icon: Icons.settings_outlined,
                iconSize: 35,
                text: 'Settings',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
