import 'package:flutter/material.dart';

class MySettingsTile extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final Color iconBackgroundColor;
  final String title, subtitle;
  final double tileWidth, tileHeight;
  MySettingsTile(
      {@required this.tileHeight,
      @required this.tileWidth,
      @required this.title,
      @required this.subtitle,
      @required this.iconData,
      @required this.iconColor,
      @required this.iconBackgroundColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: tileWidth,
      height: tileHeight,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _myIcon(),
            SizedBox(width: 20),
            _settingsMenu(),
          ],
        ),
      ),
    );
  }

  Widget _myIcon() {
    return Container(
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: iconBackgroundColor,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 0.8,
                spreadRadius: 0.5,
                offset: (Offset(1, 1)))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          iconData,
          color: iconColor,
        ),
      ),
    );
  }

  Widget _settingsMenu() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
        Text(
          subtitle,
          style: TextStyle(color: Colors.grey.shade700),
        ),
      ],
    );
  }
}
