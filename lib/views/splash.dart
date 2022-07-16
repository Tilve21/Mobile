import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'menu.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Home createState() => Home();
}

class Home extends State<Splash> {
  @override
  void initState() {    
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Menu()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 168, 81, 214),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 300,
                width: 300,
                child:
                    Lottie.asset('assets/animations/service-animation.json')),
            const SizedBox(height: 20),
            const Text(
              "Easy Store",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
