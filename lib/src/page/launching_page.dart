import 'package:flutter/material.dart';

class LaunchingPage extends StatefulWidget {
  const LaunchingPage({Key? key}) : super(key: key);

  @override
  State<LaunchingPage> createState() => _LaunchingPageState();
}

class _LaunchingPageState extends State<LaunchingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
  }
}
