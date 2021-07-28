import 'package:flutter/material.dart';

class GetButton extends StatelessWidget {
  GetButton({this.callback, this.icon, this.color, this.size});
  final VoidCallback? callback;
  final IconData? icon;
  final Color? color;
  final double? size;
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return IconButton(
      onPressed: callback,
      icon: Icon(icon),
      color: color,
      iconSize: size ?? deviceSize.width / 12,
    );
  }
}
