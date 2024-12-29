import 'package:e_commerce_flutter/Utilities/api_end_point.dart';
import 'package:e_commerce_flutter/core/API/generic_request.dart';
import 'package:e_commerce_flutter/core/API/request_method.dart';
import 'package:e_commerce_flutter/core/error/exceptions.dart';
import 'package:e_commerce_flutter/core/error/failures.dart';
import 'package:e_commerce_flutter/models/MovieResponse.dart';
import 'package:dartz/dartz.dart';


class HomeDataHandler {
  static Future<Either<Failure,MovieResponse>> fetchPopularMovies(String type)async{
    print(" test>>>>>>>>>>>>>>  ${APIEndPoint.listData(type)}");

    try {
      MovieResponse response = await GenericRequest<MovieResponse>(
        method: RequestApi.get  // Get Or Post
          (
            url: APIEndPoint.listData(type)),
        fromMap: MovieResponse.fromJson,
      ).getObject();
      return Right(response);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel));
    }
  }
}