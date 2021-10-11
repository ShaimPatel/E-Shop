import 'package:flutter/material.dart';

class MyButtonWidget extends StatelessWidget {
  final String btnText;
  final Color btnColor;
  final Function onPress;
  // ignore: prefer_const_constructors_in_immutables
  MyButtonWidget({
    Key? key,
    required this.btnText,
    required this.btnColor,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () => onPress,
          style: ElevatedButton.styleFrom(
            primary: btnColor,
          ),
          child: Text(
            btnText,
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ));
  }
}
