
import 'package:clean_architecture/core/constant.dart';
import 'package:clean_architecture/src/authentication/domain/entity/user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'get_posts_api_service.g.dart';

@RestApi(baseUrl:baseUrl)
abstract class PostsApiService {
  factory PostsApiService(Dio dio) = _PostsApiService;
  
  @GET('/posts')
  Future<List<User>> getUsers();

}