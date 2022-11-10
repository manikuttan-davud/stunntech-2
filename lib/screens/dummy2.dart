import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class DummyTwo extends StatelessWidget {
  const DummyTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: AppBar is not working. Please check.
      ///Note :
      appBar: const AppBarWidget(),
      body: SizedBox(
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: ((context, index) => Padding(
                  padding: EdgeInsets.only(left: 17.w, top: 17.h, right: 19.w),
                  child: Stack(children: [
                    SizedBox(
                        child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      //repeatation of cards
                      //TODO: #Comments : Use more clear and detailed comments
                      //TODO: #Comments : Try to include the comments inside the custom widgets too.
                      //Eg: Custom Widget representing each item in the home page.
                      child: const JobCard(),
                    )),
                    //widget that overlay jobcard
                    //TODO: #Comments : Use more clear and detailed comments
                    //TODO: #Comments : Use names that are more related to the functionality of the custom widget.
                    const StackWidget(),
                  ]),
                ))),
      ),
    );
  }
}

class StackWidget extends StatelessWidget {
  const StackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 159.h,
      child: Container(
        width: 74.w,
        height: 20.h,
        decoration: const BoxDecoration(color: colorFF6262),
        child: const Center(
          child: Text(
            //TODO : Change the text color according to figma
            '本日まで',
            style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w700, color: colorFFFFFF),
          ),
        ),
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Padding(
        padding: EdgeInsets.all(10),
        child: SearchBar(),
      ),
      actions: [
        //TODO: Specify use of the foloowing widgets
        FilterActionButton(
          onPressed: () => print("filter pressed"),
        ),
        //TODO: While extracting similar widgets, try to follow a similar pattern
        /// For instance, the padding is inside the FilterActionButton Widget above, but outside the FavouriteActionButton.
        Padding(
          padding: EdgeInsets.only(left: 12.25.w, right: 16.w),
          child: FavouriteActionButton(
            onPressed: () => print("Favourite pressed"),
          ),
        )
      ],
    );
  }
}

//TODO : Make private
class FavouriteActionButton extends StatelessWidget {
  final Function onPressed;
  const FavouriteActionButton({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onPressed(),
        child: const Icon(
          Icons.favorite_outline,
          color: colorFF6262,
        ));
  }
}

//TODO : Make private
class FilterActionButton extends StatelessWidget {
  final Function onPressed;
  const FilterActionButton({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Padding(
        padding: EdgeInsets.only(left: 15.74.w),
        child: const Icon(
          Icons.filter,
          color: Color.fromRGBO(48, 48, 48, 0.35),
        ),
      ),
    );
  }
}

//TODO : Make private
class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 241.w,
      height: 33.h,
      child: Center(
        child: TextField(
          scrollPadding: const EdgeInsets.all(10),
          decoration: InputDecoration(
              //TODO:issue in padding
              hintText: "どこで働きますか？",
              hintStyle: const TextStyle(
                  fontSize: 12, color: Color.fromRGBO(48, 48, 48, 0.15)),
              filled: true,
              fillColor: colorF7F7F7,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.transparent)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.transparent))),
        ),
      ),
    );
  }
}

//Extracted widget
class JobCard extends StatelessWidget {
  ///This is a JobCard
  const JobCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: No need for this widget. Could include gesture detector inside the CardWidget itself.
    return GestureDetector(
      onTap: (() => Navigator.pushNamed(context, '/FirstScreen')),
      //widget that contains image and other text
      child: const CardWidget(),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 325.w,
        height: 388.h,
        child: Column(
          // TODO: Fix the alignment and padding.
          children: [
            Container(
              width: 325.w,
              height: 186.h,
              decoration: const BoxDecoration(
                  //TODO:change image url from api
                  //TODO:
                  image: DecorationImage(
                    image: AssetImage(
                        //TODO: Rename the file. No need for lib/.
                        //eg: assets/images/home_ti.png
                        'lib/assets/images/スクリーンショット 2022-06-08 11.42 1.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 12.w),
              child: const Text(
                '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            //widget contains last text and icon (row)
            const LastWidget(),
            SizedBox(
              height: 15.h,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //repeated Text style
              const RepeatStyle(
                text: '5月 31日（水）09 : 00 ~ 16 : 00 （休憩60分）',
              ),

              SizedBox(
                height: 8.h,
              ),
              const RepeatStyle(text: '北海道札幌市東雲町3丁目916番地17号'),
              SizedBox(
                height: 8.h,
              ),
              const RepeatStyle(text: '交通費 300円'),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: const Text(
                    '住宅型有料老人ホームひまわり倶楽部',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(48, 48, 48, 0.45)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: const Icon(
                    Icons.favorite,
                    color: colorFF6262,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class LastWidget extends StatelessWidget {
  const LastWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.0.w),
          child: Container(
            width: 130.w,
            height: 25.h,
            decoration: BoxDecoration(
                color: colorEEAB40, borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Text(
                  '介護付き有料老人ホーム',
                  style: TextStyle(
                      color: colorFAAA14,
                      fontSize: 10,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 14.w),
          child: const Text(
            '6,000円 ',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }
}

class RepeatStyle extends StatelessWidget {
  final String text;
  const RepeatStyle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      //TODO:padding issue
      padding: EdgeInsets.only(left: 0.w),
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
      ),
    );
  }
}
