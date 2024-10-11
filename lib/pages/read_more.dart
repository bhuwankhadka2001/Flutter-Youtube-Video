import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class MyReadmore extends StatefulWidget {
  const MyReadmore({super.key});

  @override
  State<MyReadmore> createState() => _MyReadmoreState();
}

class _MyReadmoreState extends State<MyReadmore> {
  String text =
      ' The readmore package in Flutter helps manage long text content by truncating paragraphs and providing a "Read More" option for users to expand or collapse the text. It allows developers to specify how many lines or characters are visible before truncation. When the text exceeds this limit, a clickable "Read More" link appears, which can be customized in terms of label, color, and style. The package also supports rich text and smooth transitions, offering a seamless user experience. It’s ideal for scenarios where displaying all the content upfront may overwhelm users, such as articles, descriptions, or social media posts. By using readmore, you can create a clean, user-friendly interface while allowing access to full content when needed.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: const Text('ReadMore Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ReadMoreText(
              style: const TextStyle(fontSize: 20),
              text,
              trimLines: 5,
              textAlign: TextAlign.justify,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Showmore',
              moreStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
              trimExpandedText: 'Showless',
              lessStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
