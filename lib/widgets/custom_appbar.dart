import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.title, this.actions}) : super(key: key);
  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: actions,
      elevation: 10,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15.r),
        bottomRight: Radius.circular(15.r),
      )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60.h);
}
