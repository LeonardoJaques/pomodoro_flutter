import 'package:flutter/material.dart';
import 'package:pomodoro_flutter/components/pages/Pomodoro.dart';
import 'package:pomodoro_flutter/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(
          create: (_) => PomodoroStore(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepOrange,
            accentColor: Colors.blueGrey,
          ),
          useMaterial3: true,
        ),
        home: const Pomodoro(),
      ),
    );
  }
}
