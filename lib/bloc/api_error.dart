import 'package:equatable/equatable.dart';

sealed class APIError extends Equatable {
  const APIError();
}

class ApiErrorUnsupportedMedia extends APIError {
  const ApiErrorUnsupportedMedia();
  @override
  List<Object?> get props => [];
}

class ApiErrorUnknown extends APIError {
  const ApiErrorUnknown({
    required this.message,
  });
  final String message;
  @override
  List<Object?> get props => [message];
}
