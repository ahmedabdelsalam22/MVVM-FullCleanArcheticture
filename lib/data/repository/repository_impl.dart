import 'package:dartz/dartz.dart';
import 'package:flutter_advanced/data/data_source/remote_data_source.dart';
import 'package:flutter_advanced/data/mapper/mapper.dart';
import 'package:flutter_advanced/data/network/failure.dart';
import 'package:flutter_advanced/data/network/request/requests.dart';
import 'package:flutter_advanced/domain/model/models.dart';
import 'package:flutter_advanced/domain/repository/repository.dart';

import '../network/error_handler.dart';
import '../network/network_info.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequest loginRequest) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _remoteDataSource.login(loginRequest);
        if (response.status == ApiInternalStatus.SUCCESS) {
          return right(response.toDomain());
        } else {
          return left(Failure(ApiInternalStatus.FAILURE,
              response.message ?? ResponseMessage.DEFAULT));
        }
      } catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(Failure(501, "No internet connection"));
    }
  }
}
