import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  const Background({Key? key}) : super(key: key);

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  bool isSignupScreen = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/loadingbar.gif'),
            fit: BoxFit.fill
        ),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 130, left: 20),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: 'Welcome',
                style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 25,
                    color: Colors.white
                ),
                children: [
                  TextSpan(
                    text: isSignupScreen ? ' to Heon Chat!' : ' back',
                    style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            Text(
              isSignupScreen ? 'Sign up to continue' : 'Sign in to continue',
              style: TextStyle(
                  letterSpacing: 1.0,

                  color: Colors.white
              ),
            )

          ],
        ),
      ),
    );
  }
}
