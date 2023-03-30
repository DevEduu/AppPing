import 'package:apping/const.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColorScafold,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        shadowColor: Colors.transparent,
        title: const Text('history'),
      ),
    );
  }
}
