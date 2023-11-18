import 'package:flutter/material.dart';

class PlantsPages extends StatefulWidget {
  const PlantsPages({super.key});

  @override
  State<PlantsPages> createState() => _PlantsPagesState();
}

class _PlantsPagesState extends State<PlantsPages> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.only(left: 20.0, top: 5.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.lightBlue,
              size: 50.0,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20.0, top: 5.0),
            decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.lightBlue),
              // color: Colors.amber,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.lightBlue,
                size: 30.0,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/galaxy.jpg"), fit: BoxFit.cover),
        ),
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 80),
              child: ListTile(
                title: Text("Planets",
                    style: TextStyle(
                        color: Colors.white, fontSize: 35.0, letterSpacing: 2)),
                subtitle: Text("Solar System",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 15.0, letterSpacing: 2)),
              ),
            ),
            const Center(
              child: Image(
                image: AssetImage("images/mars.png"),
                height: 285.0,
                width: 279.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 50.0,
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      iconColor: Colors.white),
                  icon: const Icon(Icons.chevron_left),
                  splashColor: Colors.cyan,
                ),
                const Text(
                  "Mars",
                  style: TextStyle(color: Colors.white, fontSize: 45.0),
                ),
                IconButton(
                  iconSize: 50.0,
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      iconColor: Colors.white),
                  icon: const Icon(Icons.chevron_right),
                  splashColor: Colors.cyan,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
