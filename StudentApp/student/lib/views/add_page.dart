import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student/views/home_page.dart';
import 'package:student/views/state_data.dart';

class AddPage extends StatelessWidget {
  final TextEditingController messageController = TextEditingController();
  static String _routeName = "Add Page";
  AddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Function newMessage = Provider.of<StateData>(context).newCity;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(child: Text(_routeName)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: TextField(
                  onChanged: (input) {
                    newMessage(input);
                    //boyle yaparak kullanıcın girdiği veriyi yolluyorz
                    //Provider.of<StateData>(context).newCity(input);
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your mark',
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  icon: Icon(Icons.send)),
            ],
          ),
        ),
      ),
    );
  }
}
