import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:texi_concept/constant/sizeBox_extantion.dart';
import 'package:texi_concept/constant/style.dart';

class btnWidget extends StatelessWidget {
  final String txt;
  final IconData icon;
  const btnWidget({
    super.key, required this.txt, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 6.h,
          width: 14.w,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 35, 96, 139),
            // borderRadius: BorderRadius.circular(50)
            shape: BoxShape.circle,
            border: Border.all(
                color: Colors.teal.withOpacity(0.9), width: 2),
            boxShadow: const [
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 2,
                  spreadRadius: 2,
                  offset: Offset(0, 0)),
            ],
          ),
          child:Icon(
                icon,
                color: Colors.white,
              ),
        ),
        2.vSpace,
         Text(
              txt,
              style: subtitleStyle(context),
            )
      ],
    );
  }
}
