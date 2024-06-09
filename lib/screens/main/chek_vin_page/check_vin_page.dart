import 'package:flutter/material.dart';

class CheckVinPage extends StatefulWidget {
  const CheckVinPage({super.key});

  @override
  State<CheckVinPage> createState() => _CheckVinPageState();
}

class _CheckVinPageState extends State<CheckVinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Check VIN"),
      ),
    );
  }
}
