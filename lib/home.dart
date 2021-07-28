import 'package:chimu_demo/controllers/my_colors.dart';
import 'package:chimu_demo/user.dart';
import 'package:chimu_demo/widgets/app_bar.dart';
import 'package:chimu_demo/widgets/post_widget.dart';
import 'package:chimu_demo/widgets/serach_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  final User michal = User('Michal Fain', 'New member', 'Student',
      'Hi, Looking for new job as flutter developer, hook me up!', 'assets/cyber.jpg');
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColors.bg,
      appBar: AppBar(
        backgroundColor: MyColors.appbarBg,
        toolbarHeight: deviceSize.height / 9,
        title: AppBarWidget(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(deviceSize.width / 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SearchField(),
              PostWidget(
                child: Column(
                  children: [
                    Text(
                      widget.michal.message,
                      style: TextStyle(
                        fontSize: deviceSize.width / 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Image(image: AssetImage(widget.michal.photo)),
                  ],
                ),
                user: widget.michal,
              ),
              PostWidget(
                child: Text(
                  widget.michal.message,
                  style: TextStyle(
                    fontSize: deviceSize.width / 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                user: widget.michal,
              ),
              PostWidget(
                child: Image(image: AssetImage(widget.michal.photo)),
                user: widget.michal,
              ),
              PostWidget(
                child: Column(
                  children: [
                    Text(
                      widget.michal.message,
                      style: TextStyle(
                        fontSize: deviceSize.width / 20,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Image(image: AssetImage(widget.michal.photo)),
                  ],
                ),
                user: widget.michal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
