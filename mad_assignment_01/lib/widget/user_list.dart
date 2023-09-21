import 'package:flutter/material.dart';

import '../model/user.dart';
import 'custom_list_view.dart';

class UserList extends StatelessWidget {
  UserList({super.key});
  final UserManage _user = UserManage();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _user.user.length,
      itemBuilder: (context, index) {
        return CustomListView(
          title: _user.user[index].name,
          subTitle: _user.user[index].email,
          trailingWidget: _user.user[index].messagesNo == 0
              ? const Icon(
                  Icons.task_alt_outlined,
                )
              : Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    _user.user[index].messagesNo.toString(),
                    style: const TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 14, 66, 109),
                    ),
                  ),
                ),
        );
      },
    );
  }
}

        // CustomListView(
        //   title: _user.user[1].name,
        //   subTitle: _user.user[1].email,
        // ),
        // CustomListView(
        //   title: _user.user[2].name,
        //   subTitle: _user.user[2].email,
        // ),
