import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedDemo extends StatefulWidget {
  const SharedDemo({super.key});

  @override
  State<SharedDemo> createState() => _SharedDemoState();
}

class _SharedDemoState extends State<SharedDemo> {
  bool isDarkMode = false;
  final TextEditingController _username = TextEditingController();

  Future<void> saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('username', _username.text);
  }

  Future<void> getData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    _username.text = pref.getString('username') ?? '';
  }

  Future<void> updateData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SRH"),
          backgroundColor: Colors.brown,
        ),
        body: Center(
            child: Column(
          children: [
            TextField(
              controller: _username,
            ),
            ElevatedButton(
                onPressed: () {
                  saveData();
                },
                child: const Text("Save Data"))
          ],
        )));
  }
}
