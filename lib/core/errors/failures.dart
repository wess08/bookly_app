import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: "Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "Send timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: "Receive timeout with ApiServer");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data!);
      case DioExceptionType.cancel:
        return ServerFailure(
            errorMessage: "Request to ApiServer was cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: "No internet connection");
      default:
        return ServerFailure(
            errorMessage: "Unexpected error, please try again");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMessage: "Your request not found, please try later!");
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessage: "Internal server error, please try later!");
    } else {
      return ServerFailure(
          errorMessage: "Oops, there was an error, please try again!");
    }
  }
}
