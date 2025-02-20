import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:texi_concept/constant/images.dart';
import 'package:texi_concept/constant/sizeBox_extantion.dart';
import 'package:texi_concept/constant/style.dart';
import 'package:texi_concept/widget/frosted_glass.dart';

class DepartureView extends StatefulWidget {
  const DepartureView({super.key});

  @override
  State<DepartureView> createState() => _DepartureViewState();
}

class _DepartureViewState extends State<DepartureView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      ShowModelSheet();
    });
    super.initState();
  }

  void ShowModelSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      backgroundColor: Colors.transparent,
      builder: (context) {
        return _sheetWidget();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: dPagePadding,
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff133d7e),
              Color.fromARGB(255, 35, 96, 139),
            ],
            stops: [0.6, 0.9],
            begin: Alignment.center,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            5.vSpace,
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      CupertinoIcons.back,
                      color: Colors.white,
                    )),
                Text(
                  'Back',
                  style: subtitleStyle(context),
                ),
                20.hSpace,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'tu',
                          style:
                              headingStyle(context).copyWith(fontSize: 20.sp)),
                      TextSpan(
                          text: 'b',
                          style: headingStyle(context)
                              .copyWith(color: Colors.amber, fontSize: 20.sp)),
                      TextSpan(
                          text: 'er',
                          style:
                              headingStyle(context).copyWith(fontSize: 20.sp)),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
            5.vSpace,
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: CircleAvatar(
                  backgroundImage:
                      const AssetImage('assets/images/profile.png'),
                  radius: 22.sp,
                  backgroundColor: Colors.amber),
              title: Text(
                'Ali Abbas',
                style: titleStyle(context),
              ),
              subtitle: Text(
                '⭐️ 4.5',
                style: subtitleStyle(context),
              ),
              trailing: SizedBox(
                width: 32.w,
                height: 10.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Cost',
                          style:
                              subtitleStyle(context).copyWith(fontSize: 15.sp),
                        ),
                        1.vSpace,
                        Text(
                          '\$20.35',
                          style:
                              subtitleStyle(context).copyWith(fontSize: 15.sp),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Time',
                          style:
                              subtitleStyle(context).copyWith(fontSize: 15.sp),
                        ),
                        1.vSpace,
                        Text(
                          '05 min',
                          style:
                              subtitleStyle(context).copyWith(fontSize: 15.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            4.vSpace,
            SizedBox(
              height: 60.h,
              child: Image.asset(taxiImg),
            )
          ],
        ),
      ),
    );
  }
}

class _sheetWidget extends StatefulWidget {
  const _sheetWidget({super.key});

  @override
  State<_sheetWidget> createState() => _sheetWidgetState();
}

class _sheetWidgetState extends State<_sheetWidget> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return FrostedGlassBox(
        width: 80.w,
        height: 40.h,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            
            children: [
              Text(
                'You arrived',
                style: titleStyle(context).copyWith(fontSize: 22.sp),
              ),
              2.vSpace,
              Text(
                'How was your trip?',
                style: subtitleStyle(context).copyWith(fontSize: 16.sp),
              ),
              3.vSpace,
              Center(
                child: RatingStars(
                  value: value,
                  onValueChanged: (value) {
                    setState(() {
                      this.value = value;
                    });
                  },
                  starBuilder: (index, color) {
                    return Icon(
                      Icons.star,
                      color: color,
                    );
                  },
                  starCount: 5,
                  starSize: 25,
                  valueLabelColor: Colors.amber,
                  valueLabelTextStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 12.0,
                  ),
                  valueLabelRadius: 30,
                  maxValue: 5,
                  starSpacing: 5,
                  maxValueVisibility: false,
                  valueLabelVisibility: true,
                  animationDuration: const Duration(milliseconds: 1000),
                  valueLabelPadding: const EdgeInsets.symmetric(
                    vertical: 1.0,
                    horizontal: 8.0,
                  ),
                  valueLabelMargin: const EdgeInsets.only(right: 8),
                  starOffColor: const Color(0xffe7e8ea),
                  starColor: Colors.amber,
                ),
              ),
              3.vSpace,
              Text(
                'Your feedback will help us\nimprove driving experience\n better !',
                style: subtitleStyle(context).copyWith(fontSize: 16.sp),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}
