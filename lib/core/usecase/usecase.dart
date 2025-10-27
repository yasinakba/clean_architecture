
import 'package:clean_architecture/core/util/typedef.dart';

abstract class UseCaseWithParams<Type, Params> {
   UseCaseWithOutParams();
  ResultFuture<Type> call(Params params);
}

abstract class UseCaseWithOutParams<Type>{
  const UseCaseWithOutParams();
  ResultFuture<Type> call();
}