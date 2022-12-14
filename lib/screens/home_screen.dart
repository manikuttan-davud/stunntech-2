import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              // padding: const EdgeInsets.fromLTRB(24,53,110,12),
              padding: const EdgeInsets.only(top: 53, left: 24, right: 33),
              child: SizedBox(
                width: 241.w,
                height: 33.h,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "where do you work",
                      hintStyle:
                          const TextStyle(fontSize: 12, color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              const BorderSide(color: Colors.transparent))),
                ),
              ),
            ),
            //TODO: Add screen util
            const Padding(
              padding: EdgeInsets.only(top: 56, bottom: 14),
              child: SizedBox(
                  width: 27, height: 27, child: Icon(Icons.filter_5_outlined)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 56, bottom: 14, left: 30),
              child: SizedBox(
                  width: 27,
                  height: 27,
                  child: Icon(
                    Icons.favorite_outline,
                    color: Colors.red,
                  )),
            )
          ],
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: ((context, index) => const JobWidget())),
          ),
        ),
      ])
          //const jobWidget()

          ),
    );
  }
}

class JobWidget extends StatelessWidget {
  const JobWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: SizedBox(
            height: 388,
            width: 325,
            child: Column(children: [
              Stack(children: [
                SizedBox(
                  height: 186,
                  width: 325,
                  child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/5087/5087579.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Container(
                    width: 74,
                    height: 20,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 98, 98, 0.8)),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        'Hurry up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 65),
                    child: Text(
                      "Part Time Job Application title example",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 62),
                        child: Container(
                          decoration: BoxDecoration(color: Colors.yellow[100]),
                          child: const Text(
                            'Types of Care Service',
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.w500,
                                fontSize: 10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                      const Text(
                        '6000',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 65),
                    child: Text(
                      'Full Time Job (7:00 - 10:00 (For Students)) ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.only(left: 65),
                    child: Text(
                      'Full Time Job (9:00 - 2:00 (For Adults)) ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.only(left: 65),
                    child: Text(
                      'Monday-Saturday ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 65),
                        child: Text(
                          'Sunday Holyday ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.grey.withOpacity(0.4)),
                        ),
                      ),
                      const SizedBox(
                        width: 160,
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  ),
                ],
              ),
            ])),
      ),
    );
  }
}
