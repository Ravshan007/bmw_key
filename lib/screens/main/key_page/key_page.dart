import 'package:bmw_key/core/constants/constants.dart';
import 'package:bmw_key/core/widgets/unlock_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: AppColors.black,
              expandedHeight: 390.0,
              floating: false,
              pinned: true,
              automaticallyImplyLeading: false,
              collapsedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                title: SizedBox(
                  height: 80,
                  child: Text(
                    "KEY",
                    style: GoogleFonts.michroma(
                      textStyle: const TextStyle(
                        fontSize: 36,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                titlePadding: const EdgeInsets.only(
                    top: 30, left: 0, right: 0, bottom: 0),
                centerTitle: true,
                expandedTitleScale: 1,
                background: Stack(
                  children: [
                    Positioned(
                      top: 90,
                      child: Container(
                        color: AppColors.black,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 0, right: 0, bottom: 0),
                          child: Image.asset(
                            AppImages.keyImage,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 220,
                      top: 85,
                      child: Text(
                        "BMW i8",
                        style: GoogleFonts.metrophobic(
                            textStyle: const TextStyle(
                                fontSize: 32,
                                color: AppColors.white,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Positioned(
                      left: 295,
                      top: 120,
                      child: Text(
                        "2015",
                        style: GoogleFonts.metrophobic(
                          textStyle: const TextStyle(
                              fontSize: 22,
                              color: AppColors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 25,
                        ),
                        UnlockButton(
                          icon: AppIcons.lock,
                          text: "Lock",
                        ),
                        Spacer(),
                        UnlockButton(
                          icon: AppIcons.unlock,
                          text: "Unlock",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: AppColors.C_1C508CFF,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.fuel,
                            height: 32,
                            width: 32,
                          ),
                          const Text(
                            "80%",
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.C_18A415,
                            ),
                          ),
                          Container(
                            height: 56,
                            width: 126,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: AppColors.C_1C508CFF
                              ),
                              borderRadius: const BorderRadius.all(Radius.elliptical(400, 200))
                            ),
                            child: Text(
                              "270,7 km",
                              style: GoogleFonts.metrophobic(
                                textStyle: const TextStyle(
                                  color: AppColors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
