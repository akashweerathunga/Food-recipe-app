import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:food_recpie_app/utils/colors.dart';
import 'package:food_recpie_app/widgets/food_only_card.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: formText,
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(25, 60, 25, 30),
            child: Column(
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    Expanded(
                        child: SizedBox(
                      width: 0,
                    )),
                    Icon(
                      Icons.share,
                      color: mainText,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 110.0,
                    width: 110.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/p1.jpg'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Choirul Syafril',
                  style: TextStyle(
                    color: mainText,
                    fontSize: 17,
                    fontFamily: 'InterBold',
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: const <Widget>[
                          Text(
                            '32',
                            style: TextStyle(
                              color: mainText,
                              fontSize: 17,
                              fontFamily: 'InterBold',
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Recipes',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'InterMedium',
                              color: secondaryText,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: const <Widget>[
                          Text(
                            '782',
                            style: TextStyle(
                              color: mainText,
                              fontSize: 17,
                              fontFamily: 'InterBold',
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Following',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'InterMedium',
                              color: secondaryText,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: const <Widget>[
                          Text(
                            '1,287',
                            style: TextStyle(
                              color: mainText,
                              fontSize: 17,
                              fontFamily: 'InterBold',
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Followers',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'InterMedium',
                              color: secondaryText,
                            ),
                          )
                        ],
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
                      'Recipes',
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
                      'Liked',
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
              childAspectRatio: (300 / 380),
              crossAxisCount: 2,
              children: const <Widget>[
                FoodOnlyCard(),
                FoodOnlyCard(),
                FoodOnlyCard(),
                FoodOnlyCard(),
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
