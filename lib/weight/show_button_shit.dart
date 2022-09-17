import 'package:flutter/material.dart';
import 'package:hallo/weight/constant.dart';

class ShowButton extends StatelessWidget {
  const ShowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 480,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Row(
              children: const [
                Text(
                  'Checkout',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 260,
                ),
                Icon(
                  Icons.close,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.grey,
              height: 1,
              width: double.infinity,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Text(
                  'Delivery',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 210,
                ),
                Text(
                  'Select Methode',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_right),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.grey,
              height: 1,
              width: double.infinity,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const Text(
                  'Pament',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 285,
                ),
                Image.asset(getAssets('card')),
                const Icon(Icons.arrow_right),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.grey,
              height: 1,
              width: double.infinity,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Text(
                  'Promo Code',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 190,
                ),
                Text(
                  'Pick discount',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_right),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.grey,
              height: 1,
              width: double.infinity,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Text(
                  'Total Cost',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  width: 240,
                ),
                Text(
                  '\$13.97',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Icon(Icons.arrow_right),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.grey,
              height: 1,
              width: double.infinity,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: RichText(
                    text: TextSpan(
                        text: 'By placing an order you agree to our\n',
                        style: TextStyle(
                          color: kGrayColor,
                        ),
                        children: [
                          TextSpan(
                              text: 'Terms',
                              style: TextStyle(
                                color: kBlackColor,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                    text: 'and',
                                    style: TextStyle(color: kGrayColor),
                                    children: [
                                      TextSpan(
                                        text: 'Conditions',
                                        style: TextStyle(
                                          color: kBlackColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ])
                              ]),
                        ]),
                  ),
                )),
            Container(
              width: 500,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Place Order',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )),
            )
          ]),
        ));
  }
}
