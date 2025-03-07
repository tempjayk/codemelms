import 'package:flutter/material.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key, required this.url});
final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: InkWell(
        onTap: () {
          return Navigator.of(context).pop();
        },
        child: Container(
            height: double.infinity,
            width: double.infinity,

            child: Image(
                fit: BoxFit.fill,
                image: NetworkImage(url))),
      )
    );
  }
}
