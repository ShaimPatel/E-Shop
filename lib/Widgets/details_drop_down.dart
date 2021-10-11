import 'package:e_shop/AppColor/app_color.dart';
import 'package:e_shop/stylies/details_screen_stylies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailsDropDown extends StatefulWidget {
  final String hintText;
  // ignore: prefer_typing_uninitialized_variables
  var ratingControl;
  final List<String> list;
  // ignore: empty_constructor_bodies, use_key_in_widget_constructors
  DetailsDropDown(
      {required this.hintText,
      required this.ratingControl,
      required this.list});

  @override
  _DetailsDropDownState createState() => _DetailsDropDownState();
}

class _DetailsDropDownState extends State<DetailsDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          fillColor: AppColors.baseWhiteColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
        hint: Text(
          widget.hintText,
          style: DetailsScreenStylies.productdropDownValuestyle,
        ),
        value: widget.ratingControl,
        items: widget.list
            .map((e) => DropdownMenuItem(
                  child: Text(e),
                  value: e,
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            widget.ratingControl = value;
          });
        },
      ),
    );
  }
}
