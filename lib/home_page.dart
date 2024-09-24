import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CountDownController _controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("PoMoDoRo")),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: CircularCountDownTimer(
          controller: _controller,
          width: 300,
          height: 300,
          duration: 100,
          fillColor: Colors.red,
          ringColor: Colors.amber,
          strokeWidth: 20.0,
          textStyle: const TextStyle(
              fontSize: 30, color: Colors.amber, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Row(
        children: [
          _button(
            title: "pause",
            onPressed: () => _controller.pause(),
          ),
          _button(
            title: "resume",
            onPressed: () => _controller.resume(),
          ),
          _button(
            title: "start",
            onPressed: () => _controller.start(),
          )
        ],
      ),
    );
  }
}

Widget _button({required String title, VoidCallback? onPressed}) {
  return Expanded(
    child: ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
    ),
  );
}
