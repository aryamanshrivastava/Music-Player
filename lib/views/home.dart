// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_player/components/my_drawer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        iconTheme:
            IconThemeData(color: Theme.of(context).colorScheme.inversePrimary),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('P L A Y L I S T',
            style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 20,
                fontWeight: FontWeight.w500)),
        centerTitle: true,
      ),
      drawer: MyDrawer(),
    );
  }
}
