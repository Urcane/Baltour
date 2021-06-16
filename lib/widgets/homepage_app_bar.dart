import 'package:flutter/material.dart';
import 'package:wisata_balikpapan_apps/widgets/title_view_app_bar.dart';

class HomePageAppBar extends StatefulWidget implements PreferredSizeWidget{
  static final double _kAppBarHeight = 102.0;

  HomePageAppBar({Key? key}) : preferredSize = Size.fromHeight(_kAppBarHeight), super(key: key);

  @override
  final Size preferredSize;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<StatefulWidget> {
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TitleViewAppBar(),
      toolbarHeight: 80.0,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
        Container(
          margin: const EdgeInsets.only(
            top: 16.0,
            right: 16.0
          ),
          child: IconButton(
            iconSize: 28.0,
            icon: Icon(
              Icons.notifications_none_outlined
            ), 
            onPressed: null //onPressed property is required, so i set null to do nothing
          ),
        ),
      ],
    );
  }
}