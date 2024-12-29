import 'package:e_commerce_flutter/Widgets/ItemWidget.dart';
import 'package:e_commerce_flutter/models/MovieResponse.dart';
import 'package:e_commerce_flutter/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';


class HomeScreen extends StatefulWidget {
  static const routeName = "home";

  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends StateMVC<HomeScreen> {

  _HomeScreenState(): super(HomeController()){
    con =HomeController();
  }
  late  HomeController con ;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping" , style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold, color: Colors.blue)) ,
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
          itemCount: con.list.length,
          itemBuilder: (context, index) =>
              Card(elevation: 5, child: movieItemWidget(item:con.list[index]))),
    );
  }
}
