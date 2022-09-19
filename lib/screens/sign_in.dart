import 'package:flutter/material.dart';
import 'package:food_recpie_app/screens/password_recovery.dart';
import 'package:food_recpie_app/screens/sign_up.dart';
import 'package:food_recpie_app/utils/colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 140),
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontFamily: 'InterBold',
                    fontSize: 22,
                    color: mainText,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Please enter your account here',
                  style: TextStyle(
                    fontFamily: 'InterMedium',
                    fontSize: 15,
                    color: secondaryText,
                  ),
                ),
                const SizedBox(height: 40),
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
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20, right: 15),
                        child: Icon(
                          Icons.email_outlined,
                          color: mainText,
                        ),
                      ),
                      hintText: 'Email or phone number',
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
                  height: 25,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: const TextField(
                    keyboardType: TextInputType.visiblePassword,
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
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20, right: 15),
                        child: Icon(
                          Icons.lock_outline_rounded,
                          color: mainText,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(left: 15, right: 20),
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                          color: secondaryText,
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: secondaryText,
                        fontFamily: 'InterMedium',
                      ),
                      border: InputBorder.none,
                    ),
                    cursorColor: primaryColor,
                    maxLines: 1,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontFamily: 'InterMedium',
                          fontSize: 15,
                          color: mainText,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PasswordRecovery(),
                          ),
                        );
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
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
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'InterBold',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Or continue with',
                  style: TextStyle(
                    fontFamily: 'InterMedium',
                    fontSize: 15,
                    color: secondaryText,
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                                    borderRadius: BorderRadius.circular(30.0))),
                        backgroundColor:
                            MaterialStateProperty.all(secondaryColor),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          SizedBox(
                            height: 17.0,
                            width: 17.0,
                            child: ImageIcon(
                              AssetImage('assets/icons/google.png'),
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Google',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'InterBold',
                            ),
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Don’t have any account?',
                      style: TextStyle(
                        fontFamily: 'InterMedium',
                        fontSize: 15,
                        color: mainText,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    InkWell(
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'InterMedium',
                            fontSize: 15,
                            color: primaryColor,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ),
                          );
                        }),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
