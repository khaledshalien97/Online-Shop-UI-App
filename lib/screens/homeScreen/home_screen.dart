import 'package:flutter/material.dart';


import 'package:online_shop_app/screens/homeScreen/widgets/appbar.dart';
import 'package:online_shop_app/screens/homeScreen/widgets/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
     
    );
  }

 
}
