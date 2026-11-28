import 'package:dio/dio.dart';

abstract class Failures {
  final String message;

  Failures(this.message);
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
    switch (dio.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dio.response!.statusCode!,
          dio.response!.data,
        );
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

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure('Your Request was not found please try again later');
    } else if (statusCode == 500) {
      return ServerFailure(
        'There is an error in the server please try again later',
      );
    } else if (statusCode == 401 || statusCode == 400 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure('There are some errors please try again later');
    }
  }
}
