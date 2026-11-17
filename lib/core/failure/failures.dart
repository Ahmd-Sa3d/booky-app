import 'package:dio/dio.dart';

abstract class Failures {
  final String message;

  new(this.message);
}

class CacheFailure extends Failures {
  CacheFailure(super.message);
}

class NetworkFailure extends Failures {
  NetworkFailure(super.message);
}

class ServerFailure extends Failures {
  ServerFailure(super.message);

  factory ServerFailure.fromDioException(DioException dio) {
    switch (dio.type){

      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure('Bad Response');
      case DioExceptionType.cancel:
        return ServerFailure('Request Cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error');
      case DioExceptionType.unknown:
        return ServerFailure('Unknown Error');
      case DioExceptionType.transformTimeout:
        return ServerFailure('Transform Timeout');
    }
  }
}
