import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:texi_concept/constant/images.dart';
import 'package:texi_concept/constant/sizeBox_extantion.dart';
import 'package:texi_concept/constant/style.dart';
import 'package:texi_concept/views/departure.dart';
import 'package:texi_concept/widget/btn_widget.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 15.sp,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 10.sp,
                  ),
                ),
                3.hSpace,
                Text(
                  '345 Cityhall Park',
                  style: subtitleStyle(context),
                ),
                const Spacer(),
                Text(
                  '8 km',
                  style: subtitleStyle(context),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: SizedBox(
                height: 2.h,
                child: const VerticalDivider(
                  color: Colors.amber,
                ),
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 15.sp,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 10.sp,
                  ),
                ),
                3.hSpace,
                Text(
                  'Barclay Stadium',
                  style: subtitleStyle(context),
                ),
                const Spacer(),
                Text(
                  '\$20.05',
                  style: titleStyle(context).copyWith(fontSize: 24.sp),
                ),
              ],
            ),
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
            ),
            8.vSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const btnWidget(txt: 'Edit Details', icon: CupertinoIcons.add),
                CircularPercentIndicator(
                  radius: 30.sp,
                  animation: true,
                  animationDuration: 1200,
                  lineWidth: 6.0,
                  percent: 0.7,
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: Colors.transparent,
                  progressColor: Colors.amber,
                  center: Text(
                    '05 min',
                    style: titleStyle(context),
                  ),
                ),
                GestureDetector(
                   onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const DepartureView())),
                  
                  child: const btnWidget(txt: 'Edit Details', icon: CupertinoIcons.bus))
              ],
            ),
            3.vSpace,
            Align(
              alignment: Alignment.center,
              child: Text(
                'Taxi of your dreams\nwill arrive soon !',
                style: titleStyle(context),
                textAlign: TextAlign.center,
              ),
            ),
            7.vSpace,
             FadeInRight(
                duration: const Duration(milliseconds: 1300),
                delay: const Duration(milliseconds: 200),
                child: Image.asset(taxiDetailImg))
          ],
        ),
      ),
    );
  }
}
