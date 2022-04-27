import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/strings.dart';
import 'package:sales_app/utils/device_utils.dart';
import 'package:sales_app/widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: const CustomAppBar(title: AppStrings.rentedText),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: ((context, index) {
              return Padding(
                padding: EdgeInsets.all(15.r),
                child: Container(
                  height: 150.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          "assets/computer.jpg",
                        ),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ],
                  ),
                ),
              );
            })));
  }
}
