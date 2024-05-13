import 'package:flutter/material.dart';
import 'package:loginapp/src/constants/colors.dart';
import 'package:loginapp/src/constants/images_strings.dart';
import 'package:loginapp/src/constants/sizes.dart';
import 'package:loginapp/src/constants/texts_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var zMediaQuery = MediaQuery.of(context);
    var zHeight = zMediaQuery.size.height;
    var zBrightness = zMediaQuery.platformBrightness;
    final isDarkMode = zBrightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? secondaryColor : primaryColor,
      body: Container(
        padding: const EdgeInsets.all(defaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: const AssetImage(welcomeScreenImage),
              height: 0.6 * zHeight,
            ),
            Column(
              children: [
                Text(zWelcomeTitle,
                    style: Theme.of(context).textTheme.headline3),
                Text(
                  zWelcomeSubTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      zLogin.toUpperCase(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      zSignup.toUpperCase(),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
