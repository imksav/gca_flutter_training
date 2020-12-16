import 'package:day1/screens/my_settings_tiles.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  double height, width;
  String appBarTitle;
  Settings({@required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: _appBar(context),
      body: _body(),
    );
  }

  Widget _appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.pop(context);
          }),
      // leading: BackButton(
      //   color: Colors.blue,
      // ),

      // title: _mySearchBar(),
      title: Text(appBarTitle),
      backgroundColor: Colors.grey.shade200,
      centerTitle: true,
      elevation: 2,
    );
  }

  Widget _mySearchBar() {
    OutlineInputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.red));
    return SizedBox(
      height: height * .06,
      width: width,
      child: TextField(
        decoration: InputDecoration(
            hintText: "Search Settings",
            prefix: Icon(
              Icons.search,
              color: Colors.blue,
            ),
            enabled: true,
            filled: true,
            focusedBorder: border,
            fillColor: Colors.white,
            enabledBorder: border),
      ),
    );
  }

  Widget _body() {
    return ListView(children: [
      MySettingsTile(
        tileWidth: width,
        tileHeight: height * .1,
        title: "Network and Internet",
        subtitle: "Wifi, Data, Mobile Usage, Hotspot",
        iconData: Icons.wifi,
        iconColor: Colors.white,
      ),
      MySettingsTile(
        tileWidth: width,
        tileHeight: height * .1,
        title: "Network and Internet",
        subtitle: "Wifi, Data, Mobile Usage, Hotspot",
        iconData: Icons.settings_ethernet,
        iconColor: Colors.white,
        iconBackgroundColor: Colors.red,
      ),
      MySettingsTile(
        tileWidth: width,
        tileHeight: height * .1,
        title: "Network and Internet",
        subtitle: "Wifi, Data, Mobile Usage, Hotspot",
        iconData: Icons.wifi,
        iconColor: Colors.white,
        iconBackgroundColor: Colors.blue,
      ),
      MySettingsTile(
        tileWidth: width,
        tileHeight: height * .1,
        title: "Network and Internet",
        subtitle: "Wifi, Data, Mobile Usage, Hotspot",
        iconData: Icons.devices,
        iconColor: Colors.white,
        iconBackgroundColor: Colors.green,
      ),
      MySettingsTile(
        tileWidth: width,
        tileHeight: height * .1,
        title: "Network and Internet",
        subtitle: "Wifi, Data, Mobile Usage, Hotspot",
        iconData: Icons.wifi,
        iconColor: Colors.white,
        iconBackgroundColor: Colors.blue,
      ),
    ]);
  }
}
