import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {

  final Function()? onTap;
  
  const SignInButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          ),
        child: Center
        (child: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
       