import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Good,Cheap,Fast',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const App(),
    );
  }
}

var cheap = false;
var good = false;
var fast = false;

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("How do you want to project to be?",
                  style: TextStyle(fontSize: 15, color: Colors.black)),
              SizedBox(
                  width: 200,
                  child: Column(
                    children: [
                      SwitchListTile(
                        value: fast,
                        onChanged: (v) {
                          if (v == true) {
                            good = false;
                            cheap = false;
                          }
                          setState(() {
                            fast = v;
                          });
                        },
                        title: const Text("Fast"),
                      ),
                      SwitchListTile(
                        value: good,
                        onChanged: (v) {
                          if (good == true) {
                            cheap = false;
                          }
                          setState(() {
                            good = v;
                          });
                        },
                        title: const Text("Good"),
                      ),
                      SwitchListTile(
                        value: cheap,
                        onChanged: (v) {
                          setState(() {
                            if (v == true) {
                              fast = false;
                              good = false;
                            }
                            cheap = v;
                          });
                        },
                        title: const Text("Cheap"),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
