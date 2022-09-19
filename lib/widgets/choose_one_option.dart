import 'package:flutter/material.dart';
import 'package:food_recpie_app/screens/add_food.dart';
import '../utils/colors.dart';

chooseOneOptionBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                )),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: ImageIcon(
                          AssetImage('assets/icons/close.png'),
                          size: 15,
                          color: mainText,
                        ),
                      ),
                      Expanded(
                          child: Text(
                        'Choose one option',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'InterBold',
                          fontSize: 22,
                          color: mainText,
                        ),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AddFood()),
                                );
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.fromLTRB(20, 30, 20, 30),
                                ),
                                alignment: Alignment.center,
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        side: const BorderSide(
                                            color: outlineText,
                                            width: 2,
                                            style: BorderStyle.solid),
                                        borderRadius:
                                            BorderRadius.circular(20.0))),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/images/ham.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    'Food',
                                    style: TextStyle(
                                      color: mainText,
                                      fontSize: 17,
                                      fontFamily: 'InterBold',
                                    ),
                                  ),
                                ],
                              )),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const AddFood()),
                                );
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.fromLTRB(20, 30, 20, 30),
                                ),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        side: const BorderSide(
                                            color: outlineText,
                                            width: 2,
                                            style: BorderStyle.solid),
                                        borderRadius:
                                            BorderRadius.circular(20.0))),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/images/ing.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                    'Ingredient',
                                    style: TextStyle(
                                      color: mainText,
                                      fontSize: 17,
                                      fontFamily: 'InterBold',
                                    ),
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ));
}
