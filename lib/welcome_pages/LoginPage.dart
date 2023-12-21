import 'package:flutter/material.dart';
import 'package:space_mobile_app/PlantsPages/PlantsPages.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(80.0),
              child: Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                maxLength: 32,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  // contentPadding: const EdgeInsets.all(20),
                  label: const Text("Username"),
                  hintText: 'Username',
                  labelStyle: const TextStyle(color: Colors.white),
                  hintStyle: const TextStyle(color: Colors.blue),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.blue)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                maxLength: 32,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelStyle: const TextStyle(color: Colors.white),
                    label: const Text("Password"),
                    hintText: 'Enter your password',
                    hintStyle: const TextStyle(color: Colors.blue),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0)),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            const SizedBox(height: 20),
            UnconstrainedBox(
              child: SizedBox(
                width: 160,
                height: 45,
                child: ElevatedButton(
                  onPressed: () => Get.to(const PlantsPages()),
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(11.0)),
                    ),
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text('Log In',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(height: 3),
            UnconstrainedBox(
              child: SizedBox(
                child: TextButton(
                  // style: TextButton.styleFrom(
                  //     shape: const RoundedRectangleBorder()),
                  onPressed: () {},
                  child: const Text(
                    'Forget Your Password!',
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
