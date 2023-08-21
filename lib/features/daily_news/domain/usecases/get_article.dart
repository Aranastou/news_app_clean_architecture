import 'package:news_app_clean_architecture/core/resources/data_state.dart';
import 'package:news_app_clean_architecture/core/usecases/usecase.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/repository/article_repository.dart';

/**
 * Implement the basic use case. Setting the generic types
 * The value returned by the call function is the article entity that wrap with the data
 * and determine the state of the response. Since we don't need a parameter we just use void.
*////

class GetArticleUseCase implements UseCase<DataState<List<ArticleEntity>>, void>{
  /**
   * The usecase gets the data from the repository and returns it
   * So we define an instance of the article repository
   * and set it in the class constructor. 
   *////
  final ArticleRepository _articleRepository;

  GetArticleUseCase(this._articleRepository);
  @override
  Future<DataState<List<ArticleEntity>>> call({void params}){
    /**
     * Here we calling the getNewsArticles() which the repository and we return them
     */
    return _articleRepository.getNewsArticles();
    }
}