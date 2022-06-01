import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student/views/delete_page.dart';
import 'package:student/views/edit_page.dart';
import 'package:student/views/state_data.dart';
import 'add_page.dart';

class HomePage extends StatelessWidget {
  final String _titleMessage = "Home Page";
  final String _centerTitle = "Bir şeyler çok bosh";
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String message = Provider.of<StateData>(context).message;

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(_titleMessage)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListTile(
        //leading: Icon(Icons.abc_outlined),
        //trailing: Icon(Icons.add_a_photo),
        title: Text("Your mark is $message"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EditPage()),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddPage()),
              );
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditPage()),
              );
            },
            child: Icon(Icons.edit),
          ),
          FloatingActionButton(
            heroTag: null,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DeletePage()),
              );
            },
            child: Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}

//Burada MaterialPageRoute nasıl aktaracağımı anlayamdım
class ButonsWidget extends StatelessWidget {
  final Icon iconName;
  const ButonsWidget({
    required this.iconName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: null,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddPage()),
        );
      },
      child: iconName,
    );
  }
}
