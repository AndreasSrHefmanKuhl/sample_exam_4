import 'package:flutter/material.dart';

class SampleExamScreen extends StatefulWidget {
  const SampleExamScreen({super.key});

  @override
  State<SampleExamScreen> createState() => _SampleExamScreenState();
}

class _SampleExamScreenState extends State<SampleExamScreen> {
  bool _prepCheck = false;
  bool _usageCheck = false;
  bool _alignstart = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text('sample'),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Center(child: Image(image: AssetImage('moon.png'))),
          SizedBox(height: 35),
          ListView(shrinkWrap: true, children: [
            ListTile(
                title: Text('Vorbereitung', style: TextStyle(fontSize: 32)),
                subtitle: Text('Auf den Wissenscheck4'),
                leading: Icon(_prepCheck
                    ? Icons.check_box
                    : Icons.check_box_outline_blank),
                onTap: () {
                  setState(() {
                    _prepCheck = !_prepCheck;
                  });
                }),
            ListTile(
                title: Text('Durchführung', style: TextStyle(fontSize: 32)),
                subtitle: Text('Des Wissenscheck 4'),
                leading: Icon(_usageCheck
                    ? Icons.check_box
                    : Icons.check_box_outline_blank),
                onTap: () {
                  setState(() {
                    _usageCheck = !_usageCheck;
                  });
                }),
          ]),
          ListView(children: [
            ListTile(
                title: Column(
                    mainAxisAlignment: _alignstart
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.spaceBetween,
                    children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 50,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.green,
                    size: 50,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.blue,
                    size: 50,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  FloatingActionButton(
                      child: Text('swap'),
                      onPressed: () {
                        setState(() {
                          _alignstart = !_alignstart;
                        });
                      }),
                ]))
          ])
        ]),
      ),
    );
  }
}
