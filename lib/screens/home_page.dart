import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sales_app/constants/assets.dart';
import 'package:sales_app/constants/strings.dart';
import 'package:sales_app/models/product_model.dart';
import 'package:sales_app/utils/device_utils.dart';
import 'package:sales_app/widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductModel> productList = [
    ProductModel(
        AppAssets.computerImage,
        "Tertemiz sahibinden sıfır kalitesinde bilgisayar",
        "3000",
        "userImage",
        "Baran Bedir",
        "date"),
    ProductModel(AppAssets.computerImage, "title", "325", "userImage",
        "userName", "date"),
    ProductModel(AppAssets.computerImage, "title", "1450", "userImage",
        "userName", "date"),
    ProductModel(AppAssets.computerImage, "title", "2000", "userImage",
        "userName", "date"),
    ProductModel(AppAssets.computerImage, "title", "4600", "userImage",
        "userName", "date"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: const CustomAppBar(
          title: AppStrings.rentedText,
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: productList.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: EdgeInsets.all(15.r),
                child: InkWell(
                  onTap: () {
                    print(index);
                  },
                  child: Container(
                    height: 150.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: ClipRRect(
                            child: Image.asset(
                              productList[index].productImage,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.r),
                              bottomLeft: Radius.circular(15.r),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(productList[index].title),
                              Text(productList[index].price +
                                  " . " +
                                  "Toplam Ücret"),
                              Row(
                                children: [
                                  const CircleAvatar(),
                                  Text(productList[index].userName),
                                ],
                              ),
                              Container(
                                width: DeviceUtils.getScaledWidth(context, 1),
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(15.r))),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            })));
  }
}
