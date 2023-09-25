import 'package:flutter/material.dart';
import 'package:mad_assignment_01/res/colors.dart';
import 'package:mad_assignment_01/widget/user_list.dart';

import '../widget/custom_button.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.only(
        left: 5,
        top: 5,
        right: 8,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
      ),
      child: Column(
        children: [
          Container(
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
                          backgroundColor: Theme.of(context)
                              .iconTheme
                              .color!
                              .withOpacity(0.4),
                          radius: 15,
                          child: const Icon(
                            Icons.manage_accounts,
                            size: 15,
                            color: highLight,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Accounts',
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
                    right: 140,
                  ),
                  child: Text(
                    'Add another account - so you can switch between theme easily.',
                    style: TextStyle(
                      color: gray,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Your existing account',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Manage account',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.amber.shade900,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 270,
                  child: UserList(),
                ),
                const CustomButton(
                  btnTitle: 'Add another',
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                  onPressed: null,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
