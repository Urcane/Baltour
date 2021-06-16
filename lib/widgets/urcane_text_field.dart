
import 'package:flutter/material.dart';
import 'package:wisata_balikpapan_apps/constants/color.dart';

class UrcaneTextField extends StatelessWidget {
  final Function(String)? onChange;
  final Function(String)? onSubmitted;
  final Function()? onIconButtonClick;
  final bool isEnabled;

  UrcaneTextField({
    this.onChange,
    this.onSubmitted,
    this.onIconButtonClick,
    this.isEnabled = true,
  });

  @override
    Widget build(BuildContext context) {
      return TextField(
        enabled: this.isEnabled,
        onChanged: this.onChange,
        onSubmitted: this.onSubmitted,
        decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: IconButton(
            icon: Icon(
              Icons.search,
            ),
            onPressed: this.onIconButtonClick,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: blueWhiteColorTheme,
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.0))
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: blueColorTheme,
              width: 2.0
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.0))
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.0,
              color: Colors.grey.shade500
            ),
            borderRadius: BorderRadius.all(Radius.circular(8.0))
          )
        ),
      );
    }
}