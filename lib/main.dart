import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_1/list_helper.dart';

/// +--------------------------------------------------------+
/// | TASK DETAILS:                                          |
/// |--------------------------------------------------------|
/// | This tasks will look at the methods you use to         |
/// | optimise code for good in app performance.             |
/// |                                                        |
/// | Part 1:                                                |
/// | In order to complete this task you will need to        |
/// | display a list of 2000 shopping items.                 |
/// | - This list should be randomly generated and be 2000   |
/// |   items long. (Duplicate items are okay, as long as    |
/// |   they are random)                                     |
/// | - The possible items are provided in the consts.dart   |
/// |   file that should be in the current directory.        |
/// | - Each item in the list should be capitalised          |
/// |                                                        |
/// | Part 2:                                                |
/// | In order to complete this part of the task you will    |
/// | to add some functionality to the app.                  |
/// | Please add a way to add items to the shopping list.    |
/// | - The items added should always go to the top of the   |
/// |   list.                                                |
/// | - You may use libraries but they should not be needed. |
/// |                                                        |
/// | Notes:                                                 |
/// | - Please comment your code where possible (if time     |
/// |   allows for it)                                       |
/// | - Libraries are allowed to be used but are not         |
/// |   necessary for the task at hand.                      |
/// +--------------------------------------------------------+

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOit Software Task 1',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final helper = ListHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task One"),
      ),
      body: ListView.builder(
          itemCount: helper.mocList.length,
          itemBuilder: (context, ind) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: Text(
                helper.mocList[ind],
                textAlign: TextAlign.center,
              ),
            );
          }),
      floatingActionButton: IconButton(
        icon: const Icon(Icons.add),
        onPressed: onAddPressed,
      ),
    );
  }

  void onAddPressed() {
    helper.addToList();

    setState(() {});
  }
}
