import 'package:flutter/material.dart';
import 'package:utibu_mobile/components/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  
  // Controllers for Text Editing
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),

                //logo icon
                const Icon(
                  Icons.medication,
                  color: Color.fromARGB(255, 82, 173, 248),
                  size: 150,
                ),

                const SizedBox(height: 50),

                // Patient Welcome Back Message
                Text(
                  'Welcome to Utibu Mobile!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 82, 173, 248),
                    fontSize: 20,
                  ),
                ),

                const SizedBox(height: 50),

                // email textfield
                CustomTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 50),

                // password textfield
                CustomTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                // sign in button

                // forgot password option

                // Register user option
              ],
            ),
          ),
        ));
  }
}
