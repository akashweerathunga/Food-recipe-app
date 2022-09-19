import '../utils/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/success_alert.dart';

class AddIngredient extends StatefulWidget {
  const AddIngredient({Key? key}) : super(key: key);

  @override
  _AddIngredientState createState() => _AddIngredientState();
}

class _AddIngredientState extends State<AddIngredient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: formText,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(25, 60, 25, 30),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Text(
                        'Cancel',
                        style: TextStyle(
                          fontFamily: 'InterBold',
                          fontSize: 17,
                          color: secondaryColor,
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                      )),
                      Text(
                        '1/',
                        style: TextStyle(
                          fontFamily: 'InterBold',
                          fontSize: 17,
                          color: mainText,
                        ),
                      ),
                      Text(
                        '2',
                        style: TextStyle(
                          fontFamily: 'InterBold',
                          fontSize: 17,
                          color: secondaryText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        'Ingredients',
                        style: TextStyle(
                          fontFamily: 'InterBold',
                          fontSize: 17,
                          color: mainText,
                        ),
                      ),
                      Expanded(
                          child: SizedBox(
                        width: double.infinity,
                      )),
                      Icon(
                        Icons.add,
                        color: mainText,
                      ),
                      Text(
                        ' Group',
                        style: TextStyle(
                          fontFamily: 'InterMedium',
                          fontSize: 17,
                          color: mainText,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.drag_indicator,
                        color: secondaryText,
                        size: 30,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        width: MediaQuery.of(context).size.width / 1.31,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: const TextField(
                          style: TextStyle(
                              color: mainText,
                              fontFamily: 'InterMedium',
                              fontSize: 15),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              borderSide:
                                  BorderSide(color: primaryColor, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              borderSide:
                                  BorderSide(color: outlineText, width: 2.0),
                            ),
                            hintText: 'Enter food name',
                            contentPadding: EdgeInsets.all(20.0),
                            hintStyle: TextStyle(
                              fontFamily: 'InterMedium',
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
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.drag_indicator,
                        color: secondaryText,
                        size: 30,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        width: MediaQuery.of(context).size.width / 1.31,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: const TextField(
                          style: TextStyle(
                              color: mainText,
                              fontFamily: 'InterMedium',
                              fontSize: 15),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              borderSide:
                                  BorderSide(color: primaryColor, width: 2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              borderSide:
                                  BorderSide(color: outlineText, width: 2.0),
                            ),
                            hintText: 'Enter food name',
                            contentPadding: EdgeInsets.all(20.0),
                            hintStyle: TextStyle(
                              fontFamily: 'InterMedium',
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
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.fromLTRB(0, 20, 0, 20),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: outlineText,
                                          width: 2,
                                          style: BorderStyle.solid),
                                      borderRadius:
                                          BorderRadius.circular(30.0))),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(
                              Icons.add,
                              color: mainText,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Ingredient',
                              style: TextStyle(
                                color: mainText,
                                fontSize: 15,
                                fontFamily: 'InterMedium',
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Steps',
                    style: TextStyle(
                      fontFamily: 'InterBold',
                      fontSize: 17,
                      color: mainText,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                              height: 30.0,
                              width: 30.0,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle, color: mainText),
                              child: const Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontFamily: 'assets/fonts/InterBold',
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ))),
                          const SizedBox(
                            height: 15,
                          ),
                          const Icon(
                            Icons.drag_indicator,
                            color: secondaryText,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 85,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width / 1.31,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const TextField(
                              style: TextStyle(
                                  color: mainText,
                                  fontFamily: 'InterMedium',
                                  fontSize: 15),
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                      color: primaryColor, width: 2.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                      color: outlineText, width: 2.0),
                                ),
                                hintText: 'Tell a little about your food',
                                contentPadding: EdgeInsets.all(20.0),
                                hintStyle: TextStyle(
                                  fontFamily: 'InterMedium',
                                  color: secondaryText,
                                ),
                                border: InputBorder.none,
                              ),
                              cursorColor: primaryColor,
                              maxLines: 3,
                              keyboardType: TextInputType.multiline,
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.31,
                            child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.fromLTRB(0, 13, 0, 13),
                                  ),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0))),
                                  backgroundColor:
                                      MaterialStateProperty.all(formText),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Icon(
                                      Icons.camera_alt_rounded,
                                      color: mainText,
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    margin: const EdgeInsets.only(),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                          margin: const EdgeInsets.only(right: 10.0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(18),
                              ),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.0))),
                              backgroundColor:
                                  MaterialStateProperty.all(formText),
                            ),
                            child: const Text(
                              'Back',
                              style: TextStyle(
                                color: mainText,
                                fontSize: 15,
                                fontFamily: 'InterBold',
                              ),
                            ),
                          ),
                        )),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10.0),
                            child: TextButton(
                              onPressed: () {
                                showAlertDialog(context);
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.all(18),
                                ),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.0))),
                                backgroundColor:
                                    MaterialStateProperty.all(primaryColor),
                              ),
                              child: const Text(
                                'Next',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'InterBold',
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
