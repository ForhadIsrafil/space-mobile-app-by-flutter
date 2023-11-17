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
                        color: Colors.white, fontSize: 50.0, letterSpacing: 2)),
                subtitle: Text("Solar System",
                    style: TextStyle(
                        color: Colors.grey, fontSize: 20.0, letterSpacing: 2)),
              ),
            ),
            Container(
                decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/mars.png"), fit: BoxFit.fitWidth),
            ))
          ],
        ),
      ),
    );
  }
}
