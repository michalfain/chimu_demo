import 'package:chimu_demo/controllers/my_colors.dart';
import 'package:chimu_demo/controllers/my_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NameRow extends StatelessWidget {
  NameRow({required this.name, this.title, this.job});
  final String name;
  final String? title;
  final String? job;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/avatar.jpg'),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: deviceSize.width / 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      ' ' + title!,
                      style: TextStyle(fontSize: deviceSize.width / 25),
                    ),
                  ],
                ),
                GetButton(
                  icon: Icons.crop_square,
                )
              ],
            ),
            Text(job!),
          ],
        ),
      ],
    );
  }
}
