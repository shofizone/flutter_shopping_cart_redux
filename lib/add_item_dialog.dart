import 'package:flutter/material.dart';

class AddItemDialog extends StatefulWidget {
  @override
  _AddItemDialogState createState() => _AddItemDialogState();
}

class _AddItemDialogState extends State<AddItemDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Add Item"),
      contentPadding: EdgeInsets.all(16.0),
      content: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: "Item Name",
                hintText: "eg. iPhone"
              ),
            ),
          ),
        ],
      ),

      actions: <Widget>[
        FlatButton(onPressed: (){Navigator.pop(context);},child: Text("Cancle"),),
        FlatButton(onPressed: (){Navigator.pop(context);},child: Text("Add"),),
      ],
    );
  }
}
