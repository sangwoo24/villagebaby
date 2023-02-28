import 'package:flutter/material.dart';
import 'package:villagebaby/app/global/manager/repository_injector.dart';
import 'package:villagebaby/app/module/home/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const RepositoryInjector(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
