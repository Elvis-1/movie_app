import 'package:flutter/material.dart';

class Horizontalline extends StatelessWidget {
  const Horizontalline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: Container(
        height: 0.5,
        color: Colors.grey,

      ),
    );
  }
}
