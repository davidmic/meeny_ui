import 'package:flutter/material.dart';
import 'package:meeny/constants.dart';
import 'package:meeny/presentations/widgets/build_listing.dart';
import 'package:meeny/presentations/widgets/build_suggestion.dart';

class Meeny extends StatefulWidget {
  const Meeny({Key? key}) : super(key: key);

  @override
  _MeenyState createState() => _MeenyState();
}

class _MeenyState extends State<Meeny> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
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
                          icon: const Icon(
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
                            child: const Text(
                              '20',
                              style: TextStyle(color: kColorWhite, fontSize: 7),
                            ),
                          )),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20).copyWith(bottom: 0),
              child: Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    color: kColorWhite,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
                    const Spacer(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                  const TextStyle(color: kColorWhite)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))))),
                          onPressed: null,
                          child: const Text('Social')),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  kColorPurple),
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                  const TextStyle(color: kColorWhite)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))))),
                          onPressed: () {},
                          child: const Text('Business')),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: kIconSize,
                          color: kColorOrange,
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const TextButton(onPressed: null, child: Text('All listing')),
                  const TextButton(onPressed: null, child: Text('Products')),
                  const TextButton(onPressed: null, child: Text('Services')),
                  const TextButton(onPressed: null, child: Text('Jobs')),
                  GestureDetector(
                      onTap: () {}, child: const Icon(Icons.filter_3)),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.75,
              child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int listing) {
                    return const Buildlisting();
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(20).copyWith(top: 5, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    child: const Text('Suggested Listing'),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: const Text('Suggested Pages'),
                    onPressed: (() {}),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.5,
              child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int listing) {
                    return BuildSuggestion();
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.75,
              child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int listing) {
                    return const Buildlisting();
                  }),
            ),
            Container(
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                color: kColorWhite,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                  ),
                  Text('Rose Koto'),
                  Text('Smoothy store'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(kColorWhite),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(color: kColorBlack)),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30))))),
                        onPressed: () {},
                        child: const Text(
                          'Support',
                          style: TextStyle(color: kColorBlack),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
