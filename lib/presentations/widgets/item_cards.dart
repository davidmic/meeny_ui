import 'package:flutter/material.dart';
import 'package:meeny/constants.dart';

class MyItemCard extends StatelessWidget {
  IconData? icon;
  String? text;
  Color? textColor;
  Color? iconColor;
  Widget? trailing;

  MyItemCard({
    this.icon,
    this.text,
    this.textColor,
    this.iconColor,
    this.trailing,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("I was tapped"))),
      child: Card(
        color: kColorWhite,
        shadowColor: kColorShadow,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Icon(
              icon,
              color: iconColor ?? kColorPurple,
              size: kIconSize,
            ),
            title: Text(
              text ?? '',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: textColor ?? kColorPurple),
            ),
            trailing: trailing ?? const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}
