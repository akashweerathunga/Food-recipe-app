import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:food_recpie_app/screens/search.dart';
import 'package:food_recpie_app/utils/colors.dart';
import '../widgets/food_item_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: formText,
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(25, 60, 25, 25),
            height: 275.0,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(10.0),
                    alignment: Alignment.center,
                    height: 60,
                    decoration: const BoxDecoration(
                        color: formText,
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: InkWell(
                      child: const IgnorePointer(
                        child: TextField(
                          style: TextStyle(
                              color: mainText,
                              fontFamily: 'InterMedium',
                              fontSize: 15),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: mainText,
                            ),
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: secondaryText,
                            ),
                            border: InputBorder.none,
                          ),
                          cursorColor: primaryColor,
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Search()),
                        );
                      },
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  child: const Text(
                    'Category',
                    style: TextStyle(
                      fontFamily: 'InterBold',
                      fontSize: 17,
                      color: mainText,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(15),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(22.0))),
                          backgroundColor:
                              MaterialStateProperty.all(primaryColor),
                        ),
                        child: const Text(
                          'All',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'InterMedium',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(15),
                            ),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0))),
                            backgroundColor:
                                MaterialStateProperty.all(formText),
                          ),
                          child: const Text(
                            'Food',
                            style: TextStyle(
                              color: secondaryText,
                              fontSize: 15,
                              fontFamily: 'InterMedium',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              const EdgeInsets.all(15),
                            ),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22.0))),
                            backgroundColor:
                                MaterialStateProperty.all(formText),
                          ),
                          child: const Text(
                            'Drink',
                            style: TextStyle(
                              color: secondaryText,
                              fontSize: 15,
                              fontFamily: 'InterMedium',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(20),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: const Text(
                      'Left',
                      style: TextStyle(
                        color: mainText,
                        fontSize: 15,
                        fontFamily: 'InterBold',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(20),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: const Text(
                      'Right',
                      style: TextStyle(
                        color: secondaryText,
                        fontSize: 15,
                        fontFamily: 'InterBold',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 4,
                color: primaryColor,
              )),
              Expanded(
                  child: Container(
                height: 1,
                color: outlineText,
              )),
            ],
          ),
          Flexible(
              child: Container(
            color: Colors.white,
            child: GridView.count(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              childAspectRatio: (300 / 500),
              crossAxisCount: 2,
              children: const <Widget>[
                FoodItemCard(),
                FoodItemCard(),
                FoodItemCard(),
                FoodItemCard(),
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget buildBlur({
    required Widget child,
    required BorderRadius borderRadius,
    double sigmaX = 10,
    double sigmaY = 10,
  }) =>
      ClipRRect(
        borderRadius: borderRadius,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
          child: child,
        ),
      );
}
