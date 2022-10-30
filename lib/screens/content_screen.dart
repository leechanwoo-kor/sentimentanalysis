import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/content.dart';

class ContentScreen extends StatefulWidget {
  @override
  _ContentScreenState createState() {
    return new _ContentScreenState();
  }
}

class _ContentScreenState extends State<ContentScreen> {
  List<Content> contents = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('http test'),
      ),
      body: isLoading
          ? Center(
              child: const CircularProgressIndicator(),
            )
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: contents.length,
              itemBuilder: (context, index) {
                return Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(contents[index].model),
                        Text(contents[index].nScore.toString()),
                        Text(contents[index].rScore.toString()),
                      ],
                    ));
              }),
    );
  }
}
