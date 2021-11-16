import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:meeny/constants.dart';
import 'package:meeny/presentations/widgets/item_cards.dart';

class SubMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: const Icon(Icons.cancel),
              )),
          MyItemCard(
            icon: Icons.timer_10_select_outlined,
            text: 'My Activity',
            iconColor: kColorPurple,
            textColor: kColorPurple,
          ),
          MyItemCard(
            icon: Icons.timer_10_select_outlined,
            text: 'Saved',
            iconColor: kColorPurple,
            textColor: kColorPurple,
          ),
          MyItemCard(
            icon: Icons.timer_10_select_outlined,
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
                onPressed: () {},
                child: const Text('Create new'),
              )
            ],
          ),
          TextField(
            onChanged: (v) {
              log(v);
            },
            decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xffd5d5d5),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Pages'),
          ),
          buildPagesTile(),
          buildPagesTile(),
          buildPagesTile(),
        ],
      ),
    );
  }

  Container buildPagesTile() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: const CircleAvatar(
          radius: 30,
          backgroundColor: kColorPurple,
        ),
        title: const Text('Business name'),
        subtitle: const Text('Private seller'),
        trailing: Wrap(
          children: [
            GestureDetector(
              child: Container(
                  color: const Color(0xff949494),
                  padding: EdgeInsets.all(5),
                  child: const Icon(
                    Icons.pin,
                    color: kColorWhite,
                    size: kIconSize,
                  )),
            ),
            GestureDetector(
              child: Container(
                  color: kColorOrange,
                  padding: EdgeInsets.all(5),
                  child: const Icon(
                    Icons.edit_outlined,
                    color: kColorWhite,
                    size: kIconSize,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
