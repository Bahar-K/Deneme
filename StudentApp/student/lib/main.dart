import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student/views/add_page.dart';
import 'package:student/views/delete_page.dart';
import 'package:student/views/edit_page.dart';
import 'package:student/views/home_page.dart';
import 'package:student/views/state_data.dart';

void main() {
  runApp(ChangeNotifierProvider<StateData>(
      create: (BuildContext context) {
        return StateData();
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Students Mark App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(),
      home: HomePage(),
    );
  }
}

      //  ThemeData.dark().copyWith(
      //     tabBarTheme: const TabBarTheme(
      //       labelColor: Colors.white,
      //       unselectedLabelColor: Colors.red,
      //       indicatorSize: TabBarIndicatorSize.label,
      //     ),
      //     bottomAppBarTheme: const BottomAppBarTheme(shape: CircularNotchedRectangle()),
      //     progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
      //     listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
      //     cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      //     errorColor: ColorsItems.sulu,
      //     textSelectionTheme: const TextSelectionThemeData(
      //         selectionColor: Colors.red, cursorColor: Colors.green, selectionHandleColor: Colors.black),
      //     inputDecorationTheme: const InputDecorationTheme(
      //         filled: true,
      //         fillColor: Colors.white,
      //         iconColor: Colors.red,
      //         labelStyle: TextStyle(color: Colors.lime),
      //         border: OutlineInputBorder(),
      //         floatingLabelStyle: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.w600)),
      //     textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.red)),
      //     appBarTheme: const AppBarTheme(
      //       centerTitle: true,
      //       systemOverlayStyle: SystemUiOverlayStyle.light,
      //       backgroundColor: Colors.transparent,
      //       elevation: 0,
      //     )),

      // initialRoute: '/',