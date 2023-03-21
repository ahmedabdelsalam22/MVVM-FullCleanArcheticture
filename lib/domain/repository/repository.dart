import 'package:dartz/dartz.dart';
import 'package:flutter_advanced/data/response/responses.dart';

import '../../data/network/failure.dart';
import '../../data/network/request/requests.dart';

abstract class Repository {
  Future<Either<Failure, AuthResponse>> login(LoginRequest loginRequest);
}
