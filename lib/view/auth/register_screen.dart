import 'package:flutter/material.dart';
import 'package:infolks/widgets/custom_button.dart';
import 'package:infolks/widgets/custom_textfield.dart';

class RegisterScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  RegisterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(
            controller: nameController,
            hinttext: 'Name',
            obscuretext: false,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            controller: emailController,
            hinttext: 'Email',
            obscuretext: false,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            controller: passwordController,
            hinttext: 'Password',
            obscuretext: false,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            text: 'Register',
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
    );
    ;
  }
}
