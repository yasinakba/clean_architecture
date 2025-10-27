import 'package:clean_architecture/core/usecase/usecase.dart';
import 'package:clean_architecture/core/util/typedef.dart';
import 'package:clean_architecture/src/authentication/domain/entity/user.dart';
import 'package:clean_architecture/src/authentication/repositories/authentication_repository.dart';
import 'package:equatable/equatable.dart';

class CreateUser extends UseCaseWithParams<void, CreateUserParams> {
  final AuthenticationRepository _repository;

  CreateUser(this._repository);

  @override
  ResultVoid call(CreateUserParams params) async {
    return _repository.createUser(
      createdAt: params.createdAt,
      name: params.name,
      avatar: params.avatar,
    );
  }

  @override
  UseCaseWithOutParams() {
    // TODO: implement UseCaseWithOutParams
    throw UnimplementedError();
  }
}

class CreateUserParams extends Equatable {
  final String createdAt;
  final String name;
  final String avatar;

  const CreateUserParams({
    required this.createdAt,
    required this.name,
    required this.avatar,
  });

  @override
  List<Object?> get props => [createdAt, name, avatar];
}
