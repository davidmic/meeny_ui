import 'package:flutter/material.dart';
import 'package:meeny/constants.dart';

class Buildlisting extends StatelessWidget {
  const Buildlisting({
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
