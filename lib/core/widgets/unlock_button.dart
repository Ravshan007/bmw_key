import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';

class UnlockButton extends StatelessWidget {
  final String icon;
  final String text;
  final Function()? onTap;

  const UnlockButton({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 154,
      width: 160,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.black,
            boxShadow: const [
              BoxShadow(
                color: AppColors.C_1C508CFF,
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(1, 1),
              )
            ],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.C_1C508CFF, width: 1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                height: 46,
                width: 34,
                fit: BoxFit.scaleDown,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: const TextStyle(color: AppColors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
