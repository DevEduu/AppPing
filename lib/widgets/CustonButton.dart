import 'package:apping/const.dart';
import 'package:flutter/material.dart';

class CustonButton extends StatelessWidget {
  Function onPressed;
  CustonButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: MaterialButton(
        height: 68,
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: () {
          onPressed();
        },
        textColor: bgColorInput,
        color: myGreen,
        child: const Text(
          'START',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
