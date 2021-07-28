import 'package:chimu_demo/controllers/my_colors.dart';
import 'package:chimu_demo/controllers/my_widgets.dart';
import 'package:chimu_demo/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'name_row.dart';

class PostWidget extends StatefulWidget {
  PostWidget({
    required this.user,
    required this.child,
  });
  User user;
  bool liked = false;
  Widget child;

  @override
  _PostWidgetState createState() => _PostWidgetState();
  bool getLike() {
    liked = !liked;
    return liked;
  }
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(deviceSize.width / 22),
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.appbarBg,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            NameRow(
              name: widget.user.name,
              title: widget.user.title,
              job: widget.user.job,
            ),
            Column(
              children: [
                widget.child,
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GetButton(
                      icon: widget.liked ? Icons.favorite : Icons.favorite_border,
                      callback: () {
                        setState(() {
                          widget.getLike();
                        });
                      },
                    ),
                    Text(widget.liked ? 'DISLIKE!' : 'LIKE!')
                  ],
                ),
                Row(
                  children: [
                    GetButton(
                      icon: Icons.remove_red_eye,
                    ),
                    Text('VIEW PROFILE')
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
