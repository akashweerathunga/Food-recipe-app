import 'package:flutter/material.dart';
import 'package:food_recpie_app/screens/dashboard.dart';
import '../utils/colors.dart';

showAlertDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext c) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 480,
            padding: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  width: 170,
                  height: 170,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/emoji.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 35.0),
                  child: const Text(
                    'Upload Success',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'InterBold',
                      fontSize: 22,
                      color: mainText,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20.0, bottom: 30.0),
                  child: const Text(
                    'Your recipe has been uploaded,\nyou can see it on your profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'InterMedium',
                      fontSize: 15,
                      color: mainText,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil<dynamic>(
                      context,
                      MaterialPageRoute<dynamic>(
                        builder: (BuildContext context) => const Dashboard(),
                      ),
                      (route) => false,
                    );
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.fromLTRB(50, 20, 50, 20),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                    backgroundColor: MaterialStateProperty.all(primaryColor),
                  ),
                  child: const Text(
                    'Back to Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'InterBold',
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
