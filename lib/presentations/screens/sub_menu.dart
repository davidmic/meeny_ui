import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:meeny/constants.dart';
import 'package:meeny/presentations/widgets/helper.dart';
import 'package:meeny/presentations/widgets/item_cards.dart';

class SubMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Helper.myAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, top: 5),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(MdiIcons.cancel),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          MyItemCard(
                            icon: MdiIcons.clock,
                            text: 'My Activity',
                            iconColor: kColorPurple,
                            textColor: kColorPurple,
                          ),
                          MyItemCard(
                            icon: MdiIcons.bookmark,
                            text: 'Saved',
                            iconColor: kColorPurple,
                            textColor: kColorPurple,
                          ),
                          MyItemCard(
                            icon: Icons.settings,
                            text: 'Settings',
                            iconColor: kColorPurple,
                            textColor: kColorPurple,
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("My Pages"),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              kColorPurple),
                                      textStyle:
                                          MaterialStateProperty.all<TextStyle>(
                                              TextStyle(color: kColorWhite)),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))))),
                                  onPressed: () {},
                                  child: const Text('Create new')),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                            child: TextField(
                              onChanged: (v) {
                                log(v);
                              },
                              decoration: const InputDecoration(
                                  isDense: true,
                                  filled: true,
                                  fillColor: Color(0xffd5d5d5),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  prefixIcon: Icon(Icons.search),
                                  hintStyle: TextStyle(fontSize: 12),
                                  hintText: 'Search Pages'),
                            ),
                          ),
                          buildPagesTile(),
                          buildPagesTile(),
                          buildPagesTile(),
                          buildPagesTile(),
                          buildPagesTile(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildPagesTile() {
    return Padding(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xffe4e4e4),
        ),
        child: ListTile(
          dense: true,
          contentPadding: EdgeInsets.all(0).copyWith(right: 5, left: 5),
          leading: CircleAvatar(
            radius: 30,
            child: Image.asset("$imagePath/guy.png"),
          ),
          title: Text(
            'Business name',
            style: TextStyle(fontSize: 12, color: kColorPurple),
          ),
          subtitle: Text(
            'Private seller',
            style: TextStyle(fontSize: 10, color: kColorPurple),
          ),
          trailing: Wrap(
            children: [
              GestureDetector(
                child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff949494), shape: BoxShape.circle),
                    padding: const EdgeInsets.all(5),
                    child: Transform.rotate(
                      angle: 120,
                      child: Icon(
                        MdiIcons.pin,
                        color: kColorWhite,
                        size: 20,
                      ),
                    )),
              ),
              const SizedBox(
                width: 3,
              ),
              GestureDetector(
                child: Container(
                    decoration: const BoxDecoration(
                        color: kColorOrange, shape: BoxShape.circle),
                    padding: const EdgeInsets.all(5),
                    child: Icon(
                      MdiIcons.pencil,
                      color: kColorWhite,
                      size: 20,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
