import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException)
    {
      switch(dioException.type){
        case DioExceptionType.connectionTimeout:
          return ServerFailure('Connection timeout with ApiServer',);
        case DioExceptionType.sendTimeout:
          return ServerFailure('Send timeout with ApiServer',);
        case DioExceptionType.receiveTimeout:
          return ServerFailure('Receive timeout with ApiServer',);
        case DioExceptionType.badCertificate:
          return ServerFailure('Connection timeout with ApiServer',);
        case DioExceptionType.badResponse:
          return ServerFailure('Connection timeout with ApiServer',);
        case DioExceptionType.cancel:
          return ServerFailure('Connection timeout with ApiServer',);
        case DioExceptionType.connectionError:
          return ServerFailure('Connection timeout with ApiServer',);
        case DioExceptionType.unknown:
          return ServerFailure('Connection timeout with ApiServer',);
        default:
          return ServerFailure('errMessage',);
      }
    }
}