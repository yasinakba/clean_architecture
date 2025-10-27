import 'package:clean_architecture/core/usecase/usecase.dart';
import 'package:clean_architecture/core/util/typedef.dart';
import 'package:clean_architecture/src/authentication/repositories/authentication_repository.dart';

import '../domain/entity/user.dart';

class GetUsers extends UseCaseWithOutParams<List<User>>{
  final AuthenticationRepository _repository;
  const GetUsers(this._repository);
  @override
  ResultFuture<List<User>> call() async{
    return ;
  }

}