import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import '../../domain/authentication/authentication_requester_facade_interface.dart';
import '../../domain/core/request_failure.dart';
import '../core/constants/exceptions_codes.dart';
import '../core/exceptions.dart';

class AuthenticationRequesterFacade
    implements AuthenticationRequesterFacadeInterface {
  @override
  Future<Either<RequestFailure, Response<String>>> requestToCreateUser({
    required String email,
    required String password,
  }) {
    // it will be used differently, chill, it is only a test 👨‍💻
    throw AuthenticationException(emailAlreadyInUseECode);
  }

  @override
  Future<Either<RequestFailure, Response>> requestToSetUsername({
    required String username,
  }) {
    // Those strings probably should be splitted into a consts in different file...
    throw AuthenticationException(usernameAlreadyInUseECode);
  }

  @override
  Future<Either<RequestFailure, Response>> requestToValidateUserCredentials({
    required String email,
    required String password,
  }) {
    // TODO: implement requestToValidateUserCredentials
    throw UnimplementedError();
  }

  @override
  Future<Either<RequestFailure, Response>> requestToChangePassword({
    required String newPassword,
  }) {
    // TODO: implement requestToChangePassword
    throw UnimplementedError();
  }

  @override
  Future<Either<RequestFailure, Response>> requestToChangeUsername({
    required String newUsername,
  }) {
    // TODO: implement requestToChangeUsername
    throw UnimplementedError();
  }
}
