
import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:texi_concept/constant/images.dart';
import 'package:texi_concept/constant/sizeBox_extantion.dart';
import 'package:texi_concept/constant/style.dart';
import 'package:texi_concept/views/detail_view.dart';
import 'package:texi_concept/widget/btn_widget.dart';
import 'package:texi_concept/widget/frosted_glass.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 5).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff133d7e),
              Color.fromARGB(255, 35, 96, 139),
            ],
            stops: [0.0, 0.5],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: dPagePadding,
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'tu',
                        style: headingStyle(context).copyWith(fontSize: 22.sp),
                      ),
                      TextSpan(
                        text: 'b',
                        style: headingStyle(context)
                            .copyWith(color: Colors.amber, fontSize: 22.sp),
                      ),
                      TextSpan(
                        text: 'er',
                        style: headingStyle(context).copyWith(fontSize: 22.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 72.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            2.vSpace,
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
                              ],
                            ),
                            4.vSpace,
                            Text(
                              'Your Driver',
                              style: subtitleStyle(context),
                            ),
                            2.vSpace,
                            ListTile(
                              contentPadding: const EdgeInsets.all(0),
                              leading: CircleAvatar(
                                  backgroundImage: const AssetImage(
                                      'assets/images/profile.png'),
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
                            4.vSpace,
                            Text(
                              'Price',
                              style: subtitleStyle(context),
                            ),
                            1.vSpace,
                            Text(
                             '\$20.05',
                              style: headingStyle(context),
                            ),
                            4.vSpace,
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const DetailView())),
                              child: FrostedGlassBox(
                                height: 27.h,
                                width: 40.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Taxi of your dreams\nwill arrive soon !',
                                      style: subtitleStyle(context)
                                          .copyWith(fontSize: 15.sp),
                                      textAlign: TextAlign.center,
                                    ),
                                    2.vSpace,
                                    CircularPercentIndicator(
                                      radius: 30.sp,
                                      animation: true,
                                      animationDuration: 1200,
                                      lineWidth: 6.0,
                                      percent: 0.7,
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      backgroundColor: Colors.transparent,
                                      progressColor: Colors.amber,
                                      center: Text(
                                            '${_animation.value.toStringAsFixed(0)} min',
                                            style: titleStyle(context),
                                          ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            4.vSpace,
                            SizedBox(
                              height: 52.h,
                              child: FadeInUp(
                                child: Image.asset(
                                  taxiImg,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                5.vSpace,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    btnWidget(
                      txt: 'Call Driver',
                      icon: CupertinoIcons.phone,
                    ),
                    btnWidget(
                      txt: 'Edit Details',
                      icon: CupertinoIcons.settings,
                    ),
                    btnWidget(
                      txt: 'Cancel',
                      icon: CupertinoIcons.minus,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
