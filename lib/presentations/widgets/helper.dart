import 'package:flutter/material.dart';
import 'package:meeny/constants.dart';

class Helper {
  static PreferredSize myAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(120),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage("$imagePath/header_bg.png"),
                fit: BoxFit.fill,
              )),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
              children: [
                Image.asset("$imagePath/logo/logo.png"),
                const Spacer(),
                Stack(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mail,
                          color: kColorWhite,
                          size: kIconSize,
                        )),
                    Positioned(
                        right: 5,
                        top: 2,
                        child: Container(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: kColorOrange),
                          padding: const EdgeInsets.all(7.0),
                          child: Text(
                            '20',
                            style: TextStyle(color: kColorWhite, fontSize: 7),
                          ),
                        )),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: kColorWhite,
                      size: kIconSize,
                    )),
                const Spacer(),
                CircleAvatar(
                  radius: 30,
                  child: Image.asset("$imagePath/person_header.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
