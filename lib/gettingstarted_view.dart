//PACKAGE
import 'package:flutter/material.dart';

class GettingstartedView extends StatelessWidget {
  const GettingstartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Image.asset('assets/images/logo.png')],
      ),
    );
  }
}
