import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnTitle,
    this.color = const Color.fromARGB(255, 0, 63, 170),
    required this.icon,
    this.btnTextStyle = const TextStyle(color: Colors.white),
    required this.onPressed,
  });

  final String btnTitle;
  final Color color;
  final Icon? icon;
  final TextStyle btnTextStyle;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: MaterialStateMouseCursor.clickable,
      child: InkWell(
        onTap: () {
          onPressed!();
        },
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 25),
          height: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                btnTitle,
                style: btnTextStyle,
              ),
              icon != null
                  ? const SizedBox(
                      width: 5,
                    )
                  : const SizedBox(),
              icon ?? const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
