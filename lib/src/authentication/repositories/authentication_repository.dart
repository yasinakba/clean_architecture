import 'package:clean_architecture/core/errors/failure.dart';
import 'package:clean_architecture/core/util/typedef.dart';
import 'package:clean_architecture/src/authentication/domain/entity/user.dart';
import 'package:dartz/dartz.dart';

abstract class AuthenticationRepository {
  const AuthenticationRepository();

  ResultVoid createUser({required String createdAt, required String name, required String avatar});
  ResultFuture<List<User>> getUsers();

}