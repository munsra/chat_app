import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final VoidCallback? onPressed;
  final Widget child;

  const CustomButton({super.key, required this.name, required this.onPressed, required this.child});

  // You can also override other properties/methods as needed
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (kDebugMode) {
          print(name);
        }
        onPressed;
      },
      child: child,
    );
  }
}
