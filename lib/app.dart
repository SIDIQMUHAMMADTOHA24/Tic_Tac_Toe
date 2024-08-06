import 'package:flutter/material.dart';
import 'package:tic_tac_toe/bussines_logic/tap/tap_bloc.dart';
import 'package:tic_tac_toe/pages/main_pages/main_pages.dart';

import 'bussines_logic/export.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TapBloc(),
        ),
      ],
      child: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const MainPages(),
    );
  }
}
