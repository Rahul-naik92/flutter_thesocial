import 'package:flutter/material.dart';
import 'package:flutter_thesocial/screens/Splashscreen/splashScreen.dart';
import 'package:flutter_thesocial/screens/landingpage/landingHelpers.dart';
import 'package:provider/provider.dart';
import 'constants/Constantcolors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConstantColors constantColors = ConstantColors();

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LandingHelpers(),
        ),
      ],
      child: MaterialApp(
        home: Splashscreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(secondary: constantColors.blueColor),
            fontFamily: 'Poppins',
            canvasColor: Colors.transparent),
      ),
    );
  }
}
