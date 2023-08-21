import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';


/**
 * In the state file we defines the states
 * We define a basic state that other states will extend 
 *////
abstract class RemoteArticlesState extends Equatable {
  final List<ArticleEntity> ? articles;
  final DioException ? error;

  const RemoteArticlesState({this.articles, this.error});

  @override
  List<Object> get props => [articles!, error!]; 
}
class RemoteArticlesLoading extends RemoteArticlesState{
  const RemoteArticlesLoading();
}

class RemoteArticlesDone extends RemoteArticlesState{
  const RemoteArticlesDone(List<ArticleEntity> list);
}

class RemoteArticlesError extends RemoteArticlesState{
  const RemoteArticlesError(DioException dioException);
}