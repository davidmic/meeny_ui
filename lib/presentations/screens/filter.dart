import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:meeny/constants.dart';
import 'package:meeny/presentations/widgets/helper.dart';
import 'package:meeny/presentations/widgets/item_cards.dart';

class FilterMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Helper.myAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20,
              top: 10,
            ),
            child: Container(
              padding: const EdgeInsets.only(bottom: 20),
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
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: kColorBlack)),
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              size: 15,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Filter By",
                              style:
                                  TextStyle(color: kColorPurple, fontSize: 18),
                            ),
                          ),
                          MyItemCard(
                            widgetLeading: Text(
                              'Sort:',
                              style:
                                  TextStyle(fontSize: 18, color: kColorPurple),
                            ),
                            text: 'Best Match',
                            iconColor: kColorOrange,
                            textColor: kColorPurple,
                          ),
                          MyItemCard(
                            icon: MdiIcons.star,
                            text: 'Rating',
                            iconColor: kColorOrange,
                            textColor: kColorPurple,
                          ),
                          MyItemCard(
                            icon: Icons.person,
                            text: 'Seller Type',
                            iconColor: kColorOrange,
                            textColor: kColorPurple,
                          ),
                          MyItemCard(
                            icon: Icons.location_pin,
                            contentPadding: EdgeInsets.zero.copyWith(left: 15),
                            widgetTitle: SizedBox(
                              height: 40,
                              width: double.infinity,
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
                            iconColor: kColorOrange,
                            textColor: kColorPurple,
                          ),
                          MyItemCard(
                            icon: Icons.location_pin,
                            text: 'Discount & Deals',
                            iconColor: kColorOrange,
                            textColor: kColorPurple,
                            trailing: _buildTrailing(),
                          ),
                          MyItemCard(
                            icon: Icons.location_pin,
                            text: 'Referral',
                            iconColor: kColorOrange,
                            textColor: kColorPurple,
                            trailing: _buildTrailing(),
                          ),
                          MyItemCard(
                            icon: Icons.location_pin,
                            text: 'Reserve',
                            iconColor: kColorOrange,
                            textColor: kColorPurple,
                            trailing: _buildTrailing(),
                          ),
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

  GestureDetector _buildTrailing() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            shape: BoxShape.rectangle,
            border: Border.all(color: kColorPurple, width: 3)),
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
