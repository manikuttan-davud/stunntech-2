import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project__one/utils/colors.dart';

class DummyHome extends StatelessWidget {
  const DummyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) => Padding(
                  padding:
                      EdgeInsets.only(top: 18.0.h, left: 15.0.w, right: 15.0.w),
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: CustomCard(),
                      ),
                      Positioned(top: 159.h, child: CustomTag())
                    ],
                  ),
                )),
      ),
    );
  }
}

class CustomTag extends StatelessWidget {
  const CustomTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('本日まで')),
      width: 100,
      height: 25,
      color: Colors.redAccent,
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 325.w,
        height: 388.h,
        // color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 325.w,
              height: 186.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/home_ti.png'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w, right: 12.w),
              child: const Text(
                '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CareTypeWidget(),
                  Text(
                    '6,000円 ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            const CutsomtextWidget(
              text: '5月 31日（水）09 : 00 ~ 16 : 00 （休憩60分）',
            ),
            SizedBox(
              height: 8.h,
            ),
            const CutsomtextWidget(
              text: '北海道札幌市東雲町3丁目916番地17号',
            ),
            SizedBox(
              height: 8.h,
            ),
            const CutsomtextWidget(
              text: '交通費 300円',
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 19.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '住宅型有料老人ホームひまわり倶楽部',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade400),
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CutsomtextWidget extends StatelessWidget {
  final String text;
  const CutsomtextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 19.0.w),
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      ),
    );
  }
}

class CareTypeWidget extends StatelessWidget {
  const CareTypeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      height: 25.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: colorEEAB40),
      padding: const EdgeInsets.all(5),
      child: const Center(
          child: Text(
        '介護付き有料老人ホーム',
        style: TextStyle(
            color: colorFAAA14, fontSize: 10, fontWeight: FontWeight.w500),
      )),
    );
  }
}
