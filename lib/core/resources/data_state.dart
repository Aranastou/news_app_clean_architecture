import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T ? data;
  final DioException ? error;

  const DataState({this.data, this.error});
}

/*Class to determine if the network calls state is successful*/
class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

/*Class to determine if the network calls state failed*/
class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException error) : super(error: error);
}