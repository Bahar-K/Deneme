import 'package:flutter/material.dart';

class DeletePage extends StatelessWidget {
  static String _routeName = "DeletePage";
  const DeletePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Center(child: Text(_routeName))),
      body: SafeArea(
        child: Container(
          height: 100,
          width: 100,
          child: Text("This is delete page"),
        ),
      ),
    );
  }
}
