import 'package:flutter/material.dart';
import 'package:meeny/constants.dart';

class BuildSuggestion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20).copyWith(top: 5, bottom: 5, right: 2),
      child: Container(
        width: 150,
        height: MediaQuery.of(context).size.height * 0.26,
        decoration: const BoxDecoration(
            color: kColorWhite,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            )),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                  color: kColorWhite,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  image: DecorationImage(
                      image: AssetImage("$imagePath/food2.jpeg"),
                      fit: BoxFit.fill)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Men\'s Shoes',
                        style: TextStyle(fontSize: 12, color: kColorPurple),
                      ),
                      Text(
                        'Smoothy store',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        '25 Orders Left',
                        style: TextStyle(
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_outline,
                      color: kColorPurple,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
