// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    login();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Infolks',
            style: TextStyle(
                fontSize: 25, color: Color.fromARGB(255, 51, 4, 126))),
      ),
    );
  }

  Future<void> login() async {
    await Future.delayed(const Duration(seconds: 10));
    Navigator.pushNamed(context, '/home');
  }
}
