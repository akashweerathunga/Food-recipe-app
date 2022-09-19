import 'package:flutter/material.dart';
import 'package:food_recpie_app/screens/sign_in.dart';
import 'package:food_recpie_app/utils/colors.dart';

class StartCooking extends StatefulWidget {
  const StartCooking({Key? key}) : super(key: key);

  @override
  _StartCookingState createState() => _StartCookingState();
}

class _StartCookingState extends State<StartCooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/cooking.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Start Cooking',
                style: TextStyle(
                  fontFamily: 'InterBold',
                  fontSize: 22,
                  color: mainText,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Let's join Our Community",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'InterMedium',
                  color: secondaryText,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "to cook better food!",
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'InterMedium',
                  color: secondaryText,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                margin: const EdgeInsets.only(right: 25, left: 25),
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                    backgroundColor: MaterialStateProperty.all(primaryColor),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'InterBold',
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
