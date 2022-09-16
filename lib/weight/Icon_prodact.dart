import 'package:flutter/material.dart';
import 'package:hallo/weight/constant.dart';

class IconProdact extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const IconProdact({
    Key? key,
    required this.image,
    required this.title,
    required this.hint_title,
    required this.price,  required this.weightSize,
  }) : super(key: key);
  final String image;
  final String title;
// ignore: non_constant_identifier_names
  final String hint_title;
  final String price;
  final double  weightSize;

  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.all(10),child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      SizedBox(
        height: 120,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(getAssets(image)),
            const SizedBox(
              width: 35,
            ),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(hint_title,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 16)),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: kGrayColor,
                            ),
                          ),
                          child: const Icon(
                            Icons.remove,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),


                        const Text(
                          "1",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                            const SizedBox(
                            width: 5,),
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: kPrimaryColor)),
                          child: const Icon(
                            Icons.add,
                            color: Colors.green,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
               SizedBox(width: weightSize,),

               Container( width: 100,
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 20,

                    ),


                    Text(
                      price,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
               ),
                )
              ],
            ),
          ],
        ),
      ),

    ]),
    );
  }
}
