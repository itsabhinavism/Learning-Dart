import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  const RoundedButton(
      {super.key, required this.btnName,
      this.icon,
      this.bgColor = Colors.blue,
      this.textStyle,
      this.callBack});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callBack!();
      },
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topRight: Radius.circular(21),
            bottomLeft: Radius.circular(21),
          )),
          shadowColor: Colors.blue),
      child: icon != null
          ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              icon!,
              Container(width: 7),
              Text(
                btnName,
                style: textStyle,
              )
            ])
          : Text(
              btnName,
              style: textStyle,
            ),
    );
  }
}
