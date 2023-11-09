import 'package:flutter/material.dart';

class WelcomeToSpace extends StatefulWidget {
  const WelcomeToSpace({super.key});

  @override
  State<WelcomeToSpace> createState() => _WelcomeToSpaceState();
}

class _WelcomeToSpaceState extends State<WelcomeToSpace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Image.asset(
          'images/astronaut.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 180, left: 30),
                  child: Text("Welcome",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 70,
                      )),
                )
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text("To Space!",
                      style: TextStyle(color: Colors.white, fontSize: 50)),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 15.0),
                  child: IconButton(
                    icon: const Icon(Icons.expand_circle_down_outlined),
                    iconSize: 44,
                    color: Colors.white,
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
