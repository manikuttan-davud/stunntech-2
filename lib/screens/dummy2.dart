import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_one/utilts/colors.dart';

class DummyTwo extends StatelessWidget {
  const DummyTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          width: 241.w,
          height:33.h,
          child: Center(
            child: TextField(
              scrollPadding: const EdgeInsets.all(10),
             
                        decoration: InputDecoration(
                          //TODO:issue in padding
                            hintText: "どこで働きますか？",
                            hintStyle:
                                const TextStyle(fontSize: 12, color:Color.fromRGBO(48, 48, 48, 0.15)),
                            filled: true,
                            fillColor:colorF7F7F7,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    const BorderSide(color: Colors.transparent)),
                                    //for circular edge
                                     focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    const BorderSide(color: Colors.transparent))),
                      ),
          ),
                    
        ),
      ),
      actions:  [
        Padding(
          padding: EdgeInsets.only(left: 15.74.w),
          child: const Icon(Icons.filter,color:Color.fromRGBO(48, 48, 48, 0.35),),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 12.25.w,right: 16.w),
          child: const Icon(Icons.favorite_outline,color: colorFF6262,),
        )
      ],
      ),
      //sized box used instead of container (for whitespaces)
      body: SizedBox(
        //list view builder used for listing cards
        child: ListView.builder(
          itemCount: 5,
         
          itemBuilder: ((context, index) =>  Padding(
            
            padding: const EdgeInsets.only(left: 17,top: 17,right: 19),
            //stack is used to overlay one widget onto another widget
            child: Stack(
              children:[ SizedBox(child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 3.w),
                child: const RepeatCard(),
              )),
              //positiones is used to fix the location of a widget
              Positioned(
                top: 159.h,
                child: Container(
                  width: 74.w,
                  height: 20.h,
                  decoration: const BoxDecoration(
                    color: colorFF6262
                  ),
                  child: const Center(
                    child: Text('本日まで',
                    //Text style can be used for changing size,weight,color
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color:colorFFFFFF
                ),
                ),
                  ) ,
                ),
              ),
             
              ]
            ),
          ))),
      ),
    );
  }
}
//Extracted widget
class RepeatCard extends StatelessWidget {
  const RepeatCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
      width: 325.w,
      height: 388.h,
             
      child: Column(
        children: [
          Container(
            width: 325.w,
            height: 186.h,
             decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('lib/assets/images/スクリーンショット 2022-06-08 11.42 1.jpg'),
        fit: BoxFit.fitWidth,
        ),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
      ),
          ),
          SizedBox(height: 16.h,),
           Padding(
            padding: EdgeInsets.only(left: 20.w,right: 12.w),
            child: const Text('介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
            style: TextStyle(    
                 fontWeight: FontWeight.w500,
              fontSize: 13
       
            ),
            ),
          ),
          SizedBox(height: 7.h,),
          //last widget(extracted widget)
          const LastWidget(),
          SizedBox(height: 15.h,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RepeatStyle(text: '5月 31日（水）09 : 00 ~ 16 : 00 （休憩60分）',),
            
          
          SizedBox(height: 8.h,),
          const RepeatStyle(text:'北海道札幌市東雲町3丁目916番地17号' ),
           SizedBox(height: 8.h,),
           const RepeatStyle(text:'交通費 300円' ),
        ]
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:  [
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20.w),
                 child: const Text('住宅型有料老人ホームひまわり倶楽部',
                 style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(48, 48, 48, 0.45)
                 ),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 18.w),
                 child: const Icon(Icons.favorite,color:colorFF6262 ,),
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
          padding:  EdgeInsets.symmetric(horizontal: 19.0.w),
          child: Container(
            width: 130.w,
            height: 25.h,
            decoration: BoxDecoration(
              color: colorEEAB40,
              borderRadius: BorderRadius.circular(5)
              
            ),
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Text('介護付き有料老人ホーム',
                style: TextStyle(
                  color: colorFAAA14,
                   fontSize: 10,
                   fontWeight: FontWeight.w500
                ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(right: 14.w),
          child: const Text(
      '6,000円 ',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    ),
        )
      ],
    );
  }
}
//Extracted widget
class RepeatStyle extends StatelessWidget {
 final String text;
   const RepeatStyle({
   super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return   Padding(
      //TODO:padding issue
      padding:  EdgeInsets.only(left: 0.w),
      child: Text(text,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400
        ),
        ),
    );
  }
}