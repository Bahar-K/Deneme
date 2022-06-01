import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditPage extends StatelessWidget {
  static String _routeName = "Edit Page";
  const EditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text(_routeName)),
      ),
      body: SafeArea(
        child: Container(
          height: 100,
          width: 100,
          child: Text("This is edit page"),
        ),
      ),
    );
  }
}
