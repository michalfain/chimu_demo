import 'package:chimu_demo/controllers/my_colors.dart';
import 'package:chimu_demo/controllers/my_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String hint = 'Search post/member/event';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return TextField(
      decoration: InputDecoration(
        border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(deviceSize.width / 20), borderSide: BorderSide.none),
        filled: true,
        fillColor: MyColors.appbarBg,
        hintText: hint,
        prefixIcon: GetButton(
          icon: Icons.search,
          color: MyColors.blue,
        ),
        suffixIcon: GetButton(
          icon: Icons.list,
        ),
      ),
    );
  }
}
