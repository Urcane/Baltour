import 'package:flutter/material.dart';

class TitleViewAppBar extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            top: 16.0,
            left: 12.0,
            right: 12.0,
            bottom: 16.0
          ),
          child: Row(
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 50.0,
                  margin: const EdgeInsets.only(
                    right: 16.0
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.indigo,
                    foregroundImage: null,
                    minRadius: 50.0,
                  ),
                ),
                Container(
                  height: 50.0,
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Welcome!',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.indigo
                        ),
                      ),
                      Text(
                        "Dicoding's Reviewer",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
        ) 
      );
    }
}