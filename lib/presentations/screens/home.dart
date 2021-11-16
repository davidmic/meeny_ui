import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:meeny/constants.dart';
import 'package:meeny/presentations/screens/filter.dart';
import 'package:meeny/presentations/screens/sub_menu.dart';
import 'package:meeny/presentations/widgets/build_listing.dart';
import 'package:meeny/presentations/widgets/build_suggestion.dart';
import 'package:meeny/presentations/widgets/helper.dart';

class Meeny extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Helper.myAppBar(context),
      body: const SingleChildScrollView(
        child: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20).copyWith(bottom: 0),
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: kColorWhite, borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => SubMenu()));
                    },
                    icon: const Icon(Icons.menu)),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(color: kColorWhite)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
                          backgroundColor:
                              MaterialStateProperty.all<Color>(kColorPurple),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(color: kColorWhite)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
              TextButton(
                  onPressed: null,
                  child: Text(
                    'All listing',
                    style: TextStyle(fontSize: 15, color: kColorPurple),
                  )),
              const TextButton(onPressed: null, child: Text('Products')),
              const TextButton(onPressed: null, child: Text('Services')),
              const TextButton(onPressed: null, child: Text('Jobs')),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => FilterMenu()));
                  },
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: kColorPurple),
                      child: Icon(
                        MdiIcons.filterOutline,
                        color: kColorWhite,
                        size: 18,
                      ))),
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
              const TextButton(
                child: Text('Suggested Listing'),
                onPressed: null,
              ),
              TextButton(
                child: Text(
                  'Suggested Pages',
                  style: TextStyle(color: kColorPurple),
                ),
                onPressed: null,
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
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int listing) {
                return const SuggestedPage();
              }),
        ),
      ],
    );
  }
}

class SuggestedPage extends StatelessWidget {
  const SuggestedPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(5.0),
        height: MediaQuery.of(context).size.height * 0.24,
        decoration: BoxDecoration(
          color: kColorWhite,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              child: Image.asset("$imagePath/joan_circle.png"),
            ),
            const Text('Rose Koto'),
            const Text('Smoothy store'),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.25,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kColorWhite),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                          const TextStyle(color: kColorBlack)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))))),
                  onPressed: () {},
                  child: const Text(
                    'Support',
                    style: TextStyle(color: kColorBlack),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
