import 'package:chimu_demo/controllers/my_colors.dart';
import 'package:chimu_demo/controllers/my_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String name = 'Cyber Educators';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: deviceSize.width / 15,
          backgroundImage: AssetImage('assets/avatar.jpg'),
        ),
        GetButton(
          icon: Icons.calendar_today,
          size: deviceSize.width / 12,
          color: MyColors.grey,
        ),
        Column(
          children: [
            Image(
              height: deviceSize.height / 13,
              width: deviceSize.width / 3,
              image: AssetImage('assets/cyber.jpg'),
            ),
            Text(
              name,
              style: TextStyle(color: MyColors.grey),
            )
          ],
        ),
        GetButton(
          icon: Icons.message,
          size: deviceSize.width / 12,
          color: MyColors.grey,
        ),
        GetButton(
          icon: Icons.doorbell_outlined,
          size: deviceSize.width / 12,
          color: MyColors.grey,
        )
      ],
    );
  }
}
