import 'package:flutter/material.dart';
import 'package:space_mobile_app/welcome_pages/WelcomeToSpacePage.dart';
import 'package:get/get.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward()
          ..repeat(reverse: true);

    animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image widget
        Image.asset(
          'images/get-started.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        // Button widget
        Positioned(
          bottom: 170,
          left: 110,
          right: 110,
          child: SizedBox(
            // width: 30,
            height: 50,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient:
                    const LinearGradient(colors: [Colors.blue, Colors.white]),
              ),
              child: ElevatedButton(
                onPressed: () => Get.to(const WelcomeToSpace()),
                style: ElevatedButton.styleFrom(
                  elevation: 50,
                  backgroundColor: Colors.transparent,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    // Add some space
                    // SizedBox(width: 8),
                    Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                      size: 45,
                    ),
                    // Icon second
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
