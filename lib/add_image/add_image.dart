import 'package:flutter/material.dart';

class AddImage extends StatefulWidget {
  const AddImage({Key? key}) : super(key: key);

  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 13.0),
      width: 150,
      height: 300,
      child : Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.blue,
          ),
          OutlinedButton.icon(
            onPressed: (){},
            icon: Icon(Icons.image),
            label: Text('Add icon'),
          ),
          SizedBox(
            height: 80,
          ),
          TextButton.icon(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
            label: Text('Close'),
          ),
        ],
      ),

    );
  }
}
