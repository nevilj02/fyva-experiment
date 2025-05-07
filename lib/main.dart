import 'package:flutter/material.dart';
import 'package:test_3/data_manager.dart';
import 'package:test_3/views/image_preview.dart';

import 'views/size_view.dart';
import 'views/summary_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                    text: DataManager.route,
                  ),
                  TextSpan(
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    text: DataManager.productName,
                  ),
                ],
              ),
            ),
            ImagePreview(),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade200,
              alignment: Alignment.center,
              child: Text(DataManager.modelDesc),
            ),
            SummaryView(),
            Divider(color: Colors.grey.shade200, height: 7,),
            SizeView(),
          ],
        ),
      ),
    );
  }
}
