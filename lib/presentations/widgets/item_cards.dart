import 'package:flutter/material.dart';
import 'package:meeny/constants.dart';

class MyItemCard extends StatelessWidget {
  IconData? icon;
  String? text;
  Color? textColor;
  Color? iconColor;
  Widget? trailing;
  Widget? widgetTitle;
  Widget? widgetLeading;
  EdgeInsets? contentPadding;

  MyItemCard(
      {this.icon,
      this.text,
      this.textColor,
      this.iconColor,
      this.trailing,
      this.widgetTitle,
      this.contentPadding,
      this.widgetLeading})
      : super();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => ScaffoldMessenger.of(context)
      //     .showSnackBar(const SnackBar(content: Text("I was tapped"))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: kColorWhite,
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 1),
                  blurRadius: 3,
                  color: Colors.black.withOpacity(0.3),
                )
              ]),
          child: ListTile(
            contentPadding: contentPadding,
            leading: widgetLeading ??
                Icon(
                  icon,
                  color: iconColor ?? kColorPurple,
                  size: kIconSize,
                ),
            title: widgetTitle ??
                Text(
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
