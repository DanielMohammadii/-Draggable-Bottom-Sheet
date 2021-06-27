import 'package:draggablescrollablesheetofmine/data/data.dart';
import 'package:draggablescrollablesheetofmine/model/model.dart';
import 'package:draggablescrollablesheetofmine/widgets/bottomlist.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MyModel> models = mymodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1556648011-e01aca870a81?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: DraggableScrollableSheet(
          builder: (BuildContext context, myscrollController) {
            return Container(
              color: Colors.black.withOpacity(0.7),
              child: ListView.builder(
                controller: myscrollController,
                itemCount: models.length,
                itemBuilder: (BuildContext context, int index) {
                  var model = models[index];
                  return Bottomlist(model: model);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
