/**
 * Basic event implemenation
 *////
abstract class RemoteArticlesEvent{
  const RemoteArticlesEvent();
} 

/**
 * GetArticles event extends our basic event
 *////
class GetArticles extends RemoteArticlesEvent{
  const GetArticles();
}