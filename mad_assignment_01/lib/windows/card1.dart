import 'package:flutter/material.dart';
import 'package:mad_assignment_01/res/colors.dart';

import '../widget/custom_button.dart';

class Card1 extends StatefulWidget {
  Card1({super.key});

  @override
  State<Card1> createState() => _Card1State();
}

class _Card1State extends State<Card1> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      padding: const EdgeInsets.all(5),
      child: Container(
        width: double.infinity,
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
                  fontWeight: FontWeight.w500,
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
            // TextFormField(
            //   controller: _controller,
            //   decoration: InputDecoration(
            //     border: OutlineInputBorder(
            //       borderSide: BorderSide(
            //         color: Theme.of(context)
            //             .inputDecorationTheme
            //             .outlineBorder!
            //             .color,
            //         width: 2,
            //         // Theme.of(context)
            //         // .inputDecorationTheme
            //         // .outlineBorder!
            //         // .width,
            //       ),
            //       borderRadius: const BorderRadius.all(
            //         Radius.circular(10),
            //       ),
            //     ),
            //     contentPadding: const EdgeInsets.symmetric(
            //       vertical: 2,
            //       horizontal: 20,
            //     ),
            //   ),
            //   style: const TextStyle(
            //     fontWeight: FontWeight.w500,
            //   ),
            // ),
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: blue, width: 1.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                _controller.text,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            CustomButton(
              btnTitle: 'Send link',
              icon: null,
              onPressed: () {
                if (_controller.text.isEmpty) {
                  _controller.text = 'Panjipradana@gmail.com';
                } else {
                  _controller.text = '';
                }
                setState(() {});
              },
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
