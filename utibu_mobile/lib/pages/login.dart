import 'package:flutter/material.dart';
import 'package:utibu_mobile/components/textfield.dart';
import 'package:utibu_mobile/components/sign_in_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  
  // Controllers for Text Editing
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Method to SIgn In User
  void signUserIn() {}

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

                const SizedBox(height: 25),

                // password textfield
                CustomTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 15),

                // sign in button
                SignInButton(
                  onTap: signUserIn,
                ),

                const SizedBox(height: 20),

                // forgot password option
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Color.fromARGB(255, 82, 173, 248)),
                  ),

                const SizedBox(height: 20),

                // Register user option
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Register now',
                    style: TextStyle(
                      color: Color.fromARGB(255, 82, 173, 248),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
                ),
              ],
            ),
          ),
        ));
  }
}
