import 'package:flutter/material.dart';
import 'package:flutter_animation/widget/image_cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text("New Lunch Mobile"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.location_pin),
            )
          ],
        ),
        body: const ImageCard(),
        bottomNavigationBar: buildBottomNavigation(),
      );

  Widget buildAppBar() => AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text("New Lunch Mobile"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.location_pin),
          )
        ],
      );

  Widget buildBottomNavigation() => BottomNavigationBar(
          elevation: 0,
          unselectedItemColor: Colors.white54,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.pin_drop_outlined),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.add_location,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.person_outline),
            ),
          ]);
}
