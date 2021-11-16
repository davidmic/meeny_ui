import 'package:flutter/material.dart';
import 'package:meeny/constants.dart';

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
                    return const _buildlisting();
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
                    return suggested_listing(context);
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
                    return const _buildlisting();
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget suggested_listing(BuildContext context) {
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

class _buildlisting extends StatelessWidget {
  const _buildlisting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 2),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10).copyWith(right: 0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16)),
                      color: kColorWhite),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 16,
                        child: Image.asset("$imagePath/joan.png"),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            'Joan Lawson',
                            style: TextStyle(fontSize: 12, color: kColorPurple),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'joana222',
                            style: TextStyle(fontSize: 8),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.27,
                              padding:
                                  const EdgeInsets.all(8.0).copyWith(right: 15),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      bottomLeft: Radius.circular(16)),
                                  color: kColorOrange),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.cloud,
                                    color: kColorWhite,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Service',
                                    style: TextStyle(
                                        fontSize: 10, color: kColorWhite),
                                  ),
                                ],
                              )),
                          const Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Business page',
                              style: TextStyle(fontSize: 8),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10).copyWith(bottom: 5),
                  alignment: Alignment.bottomLeft,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "$imagePath/food1.jpeg",
                          ),
                          fit: BoxFit.fill)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Vegetables and Prawns',
                        style: TextStyle(fontSize: 14, color: kColorWhite),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.location_pin,
                                color: kColorWhite,
                                size: 12,
                              ),
                              Text(
                                'Jamaica',
                                style:
                                    TextStyle(fontSize: 8, color: kColorWhite),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                  onTap: null,
                                  child: const Icon(
                                    Icons.calculate,
                                    color: kColorWhite,
                                    size: 20,
                                  )),
                              GestureDetector(
                                  onTap: null,
                                  child: const Icon(
                                    Icons.calculate,
                                    color: kColorWhite,
                                    size: 20,
                                  )),
                              GestureDetector(
                                  onTap: null,
                                  child: const Icon(
                                    Icons.calculate,
                                    color: kColorWhite,
                                    size: 20,
                                  )),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 7, top: 5, bottom: 5),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16)),
                      color: kColorOrange),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "\$20",
                        style: TextStyle(color: kColorWhite),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kColorWhite),
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    const TextStyle(color: kColorBlack)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))))),
                            onPressed: () {},
                            child: const Text(
                              'Order',
                              style: TextStyle(color: kColorBlack),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 80,
          left: 10,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                color: kColorOrange,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Text(
              "20% \n Discount",
              style: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(color: kColorWhite, fontSize: 8),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
