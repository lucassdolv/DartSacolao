import 'package:flutter/material.dart';

class ButtonAddict extends StatelessWidget {
  const ButtonAddict({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)), // Define a forma do botão
      ),
      child: const Text('+'),
    );
  }
}
