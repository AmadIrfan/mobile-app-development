import 'package:flutter/material.dart';
import 'package:mad_assignment_01/res/colors.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    this.title,
    this.subTitle,
    this.trailingWidget,
  });

  final String? title;
  final String? subTitle;
  final Widget? trailingWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: CircleAvatar(
          child: Image.asset('assets/images/imgB.png'),
        ),
        title: Text(
          title.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          subTitle!,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: gray,
          ),
        ),
        trailing: trailingWidget,
      ),
    );
  }
}
