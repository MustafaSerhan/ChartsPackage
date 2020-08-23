import 'package:charts_package/Models/Colors.dart';
import 'package:flutter/material.dart';

class ColorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: pastelBackground,
      child: Center(
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: [
            //Main Colors
            Container(color: pastelBlue),
            Container(color: pastelDarkTheme),
            Container(color: pastelTurquoisBblue),
            Container(color: pastelRed),
            ////////////////
            //Main Colors with Opacity .4
            Container(color: pastelBlue.withOpacity(.4)),
            Container(color: pastelDarkTheme.withOpacity(.4)),
            Container(color: pastelTurquoisBblue.withOpacity(.4)),
            Container(color: pastelRed.withOpacity(.4)),
            ////////////////
            //Main Colors with Gradient to Opacity .3
            Container(
              decoration: BoxDecoration(
                color: pastelDarkTheme,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [.5, .9],
                  colors: [pastelBlue, pastelBlue.withOpacity(.3)],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: pastelDarkTheme,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [.5, 1],
                  colors: [pastelDarkTheme, pastelDarkTheme.withOpacity(.3)],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: pastelDarkTheme,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [.5, .9],
                  colors: [
                    pastelTurquoisBblue,
                    pastelTurquoisBblue.withOpacity(.3)
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: pastelDarkTheme,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [.5, .9],
                  colors: [pastelRed, pastelRed.withOpacity(.3)],
                ),
              ),
            ),
            ////////////////
          ],
        ),
      ),
    );
  }
}
