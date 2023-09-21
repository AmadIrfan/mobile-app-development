import 'package:flutter/material.dart';
import 'package:mad_assignment_01/res/colors.dart';

import '../widget/custom_button.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      padding: const EdgeInsets.all(5),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          Theme.of(context).iconTheme.color!.withOpacity(0.4),
                      radius: 15,
                      child: const Icon(
                        Icons.lock,
                        size: 15,
                        color: highLight,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Forgot Password?',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
                const Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 15,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 20,
                right: 15,
              ),
              child: Text(
                'Enter your email that you used to register your account, so we can send you a link to reset your password',
                style: TextStyle(
                  color: gray,
                ),
              ),
            ),
            Container(
              // color: Colors.red,
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: RichText(
                text: const TextSpan(
                  text: 'Email ',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: '*',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Theme.of(context)
                        .inputDecorationTheme
                        .outlineBorder!
                        .color,
                    width: 2,
                    // Theme.of(context)
                    // .inputDecorationTheme
                    // .outlineBorder!
                    // .width,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 20,
                ),
              ),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            const CustomButton(
              btnTitle: 'Send link',
              icon: null,
            ),
            Divider(
              color: Colors.grey.shade300,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Forgot your email?'),
                  TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: blue,
                        backgroundColor: Colors.transparent,
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                        )),
                    onPressed: () {},
                    child: const Text('Try phone number'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
