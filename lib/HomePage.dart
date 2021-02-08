import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var widgetList = [
      "Text",
      "Appbar",
      "Container",
      "Column",
      "Row",
      "Button",
      "Stack"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets List"),
      ),
      body: ListView.builder(
          itemCount: widgetList.length,
          shrinkWrap: true,
          itemBuilder: (builder, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8.0, vertical: 4.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('${widgetList[index]}');
                },
                child: Card(
                  elevation: 5.0,
                  child: new Container(
                      color: Colors.orange,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: <Widget>[
                          Text(widgetList[index], style: TextStyle(color: Colors
                              .black, fontSize: 20.0),),
                        ],
                      )
                  ),
                ),
              ),
            );
          }),
    );
  }
}
