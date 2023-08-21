import 'package:dio/dio.dart';
import 'package:news_app_clean_architecture/core/constants/constants.dart';
import 'package:news_app_clean_architecture/features/daily_news/data/models/article.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_service.g.dart';

/*
*RestAPI annotation is coming from retrofit package
baseUrl is the url that we fetch the data which we created in the constants.dart file under /lib/core/constants/
*////
@RestApi(baseUrl:newsAPIBaseURL) 
abstract class NewsApiService {
  factory NewsApiService(Dio dio) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getNewsArticles({
    //@Query is used to pass any parameters in the path of the url
    @Query("apiKey") String ? apiKey,
    @Query("country") String ? country,
    @Query("category") String ? category,
  });

}