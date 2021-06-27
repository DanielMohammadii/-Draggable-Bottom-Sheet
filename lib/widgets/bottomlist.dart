import 'package:draggablescrollablesheetofmine/model/model.dart';
import 'package:flutter/material.dart';

class Bottomlist extends StatelessWidget {
  const Bottomlist({
    Key? key,
    required this.model,
  }) : super(key: key);

  final MyModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(model.saladName,
          style: TextStyle(fontSize: 17, color: Colors.white)),
      leading: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 28, 10),
        child: Container(
            height: 50, width: 50, child: Image.network(model.photoUrl)),
      ),
    );
  }
}
