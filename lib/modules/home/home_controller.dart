import 'package:e_commerce_flutter/models/MovieModel.dart';
import 'package:e_commerce_flutter/modules/home/home_data_handler.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class HomeController extends ControllerMVC {
  // singleton
  factory HomeController() {
    _this ??= HomeController._();
    return _this!;
  }
  static HomeController? _this;
  HomeController._();


  late List<MovieModel> list ;


    @override
  void initState() {
    super.initState();

    getListData();

  }

  @override
  void dispose() {
    super.dispose();
  }

  Future getListData() async {
      final result =await HomeDataHandler.fetchPopularMovies("popular");
        result.fold((l){ //left failure


        }, (r){  // right success

        });

  }
}