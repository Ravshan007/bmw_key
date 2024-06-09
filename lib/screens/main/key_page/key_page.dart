import 'package:bmw_key/core/constants/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';

class KeyPage extends StatefulWidget {
  const KeyPage({super.key});

  @override
  State<KeyPage> createState() => _KeyPageState();
}

class _KeyPageState extends State<KeyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        centerTitle: true,
        title: Text(
          "KEY",
          style: GoogleFonts.michroma(
              textStyle: const TextStyle(fontSize: 36, color: AppColors.white)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: ListView(
          children: [
            SizedBox(
              height: 204,
              width: 317,
              child: Image.asset(
                AppImages.keyImage,
              ),
            )
          ],
        ),
      ),
    );
  }
}
