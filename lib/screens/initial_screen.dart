import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_project/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.blueAccent,
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
              name: 'Aprender Flutter',
              hard: 3,
              photo: 'assets/images/flutter.png',
            ),
            Task(
              name: 'Andar de bike',
              hard: 2,
              photo: 'assets/images/bike.png',
            ),
            Task(
              name: 'Meditar',
              hard: 4,
              photo: 'assets/images/ler.jpg',
            ),
            Task(
              name: 'Ler',
              hard: 5,
              photo: 'assets/images/meditar.jpg',
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacity = !opacity;
          });
        },
        child: opacity
            ? const Icon(Icons.remove_red_eye)
            : const Icon(Icons.visibility_off),
      ),
    );
  }
}
