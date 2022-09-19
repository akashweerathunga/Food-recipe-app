import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:food_recpie_app/screens/add_ingredient.dart';
import 'package:food_recpie_app/screens/search_done.dart';
import 'package:food_recpie_app/widgets/slider.dart';
import '../utils/colors.dart';

class AddFood extends StatefulWidget {
  const AddFood({Key? key}) : super(key: key);

  @override
  _AddFoodState createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 60, 25, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    InkWell(
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          fontFamily: 'InterBold',
                          fontSize: 17,
                          color: secondaryColor,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchDone()),
                        );
                      },
                    ),
                    // ignore: prefer_const_constructors
                    Expanded(
                        child: const SizedBox(
                      width: double.infinity,
                    )),
                    const Text(
                      '1/',
                      style: TextStyle(
                        fontFamily: 'InterBold',
                        fontSize: 17,
                        color: mainText,
                      ),
                    ),
                    const Text(
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
                  height: 30,
                ),
                DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    dashPattern: const [10, 10],
                    color: outlineText,
                    strokeWidth: 2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: const <Widget>[
                          ImageIcon(
                            AssetImage('assets/icons/gallery.png'),
                            size: 50,
                            color: secondaryText,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Add Cover Photo',
                            style: TextStyle(
                              fontFamily: 'InterBold',
                              fontSize: 17,
                              color: secondaryText,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '(up to 12 Mb)',
                            style: TextStyle(
                              fontFamily: 'InterMedium',
                              fontSize: 15,
                              color: secondaryText,
                            ),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Food Name',
                  style: TextStyle(
                    fontFamily: 'InterBold',
                    fontSize: 17,
                    color: mainText,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: const TextField(
                    style: TextStyle(
                        color: mainText,
                        fontFamily: 'InterMedium',
                        fontSize: 15),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(color: primaryColor, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        borderSide: BorderSide(color: outlineText, width: 2.0),
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
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Description',
                  style: TextStyle(
                    fontFamily: 'InterBold',
                    fontSize: 17,
                    color: mainText,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const TextField(
                    style: TextStyle(
                        color: mainText,
                        fontFamily: 'InterMedium',
                        fontSize: 15),
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: primaryColor, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: outlineText, width: 2.0),
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
                  height: 30,
                ),
                Row(
                  children: const <Widget>[
                    Text(
                      'Cooking Duration',
                      style: TextStyle(
                        fontFamily: 'InterBold',
                        fontSize: 17,
                        color: mainText,
                      ),
                    ),
                    Text(
                      ' (in minutes)',
                      style: TextStyle(
                        fontFamily: 'InterMedium',
                        fontSize: 17,
                        color: secondaryText,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SliderLabelWidget(),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const AddIngredient()),
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
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'InterBold',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
