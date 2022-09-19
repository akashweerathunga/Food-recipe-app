import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:food_recpie_app/screens/view_recipe.dart';
import '../utils/colors.dart';

class FoodOnlyCard extends StatefulWidget {
  const FoodOnlyCard({Key? key}) : super(key: key);

  @override
  _FoodOnlyCardState createState() => _FoodOnlyCardState();
}

class _FoodOnlyCardState extends State<FoodOnlyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        color: Colors.white,
        elevation: 0,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                InkWell(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                      width: double.maxFinite,
                      height: 170,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/f2.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ViewRecipe(),
                        ),
                      );
                    }),
                Positioned(
                  right: 11.0,
                  bottom: 130.0,
                  child: Center(
                      child: buildBlur(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12.0),
                        color: formText.withOpacity(0.3),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const ImageIcon(
                        AssetImage('assets/icons/heart.png'),
                        color: Colors.white,
                      ),
                    ),
                  )),
                )
              ],
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Pancake',
                style: TextStyle(
                  color: mainText,
                  fontSize: 17,
                  fontFamily: 'InterBold',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Food • >60 mins',
                  style: TextStyle(
                    color: secondaryText,
                    fontSize: 15,
                    fontFamily: 'InterMedium',
                  ),
                ),
              ),
            )
          ],
        ));
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
