import 'package:flutter/material.dart';
import 'package:the_place/screens/landing_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          padding: const EdgeInsets.all(24),
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LandingScreen(),
                            ));
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        size: 40,
                      ),
                    )),
                const SizedBox(height: 30),
                const Text(
                  'Welcome back',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 11, 68, 125)),
                ),
                const Text(
                  'Lets get you signed in',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 11, 68, 125)),
                ),
                const SizedBox(height: 50),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Username',
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 9, 49, 87),
                              width: 2.0),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)))),
                const SizedBox(height: 10),
                TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 9, 49, 87),
                              width: 2.0),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)))),
                const SizedBox(height: 90),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Dont Have an account?'),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Color.fromARGB(225, 9, 49, 87),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const SizedBox(height: 90),
                SizedBox(
                  height: 60,
                  width: 400,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                        backgroundColor: const Color.fromARGB(224, 4, 40, 61)),
                    onPressed: () {},
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
