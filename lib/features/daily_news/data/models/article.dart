import 'package:news_app_clean_architecture/core/constants/constants.dart';
import 'package:news_app_clean_architecture/features/daily_news/domain/entities/article.dart';

  //We can also do the following and add the super call in the constructor to initialize the fields of the parent class (ArticleEntity).
  class ArticleModel extends ArticleEntity {
    const ArticleModel({
      int? id,
      String? author,
      String? title,
      String? description,
      String? url,
      String? urlToImage,
      String? publishedAt,
      String? content,
  }) : super(
          id: id,
          author: author,
          title: title,
          description: description,
          url: url,
          urlToImage: urlToImage,
          publishedAt: publishedAt,
          content: content,
        );

  /**A factory constructor in Dart is a special type of constructor that doesn't always create a new instance of the class.
   * Instead, it's used to return an instance of the class, 
   * potentially by performing some logic or computations before creating and returning the object.
   * By using a factory constructor,
   * you can encapsulate the logic of creating an object from external data, 
   * such as JSON, and provide a clean way to obtain instances
   *  of your class with the appropriate data initialized. *////

  factory ArticleModel.fromJson(Map < String, dynamic > map){
    return ArticleModel(
      // The ?? operator is used to provide a default value (an empty string in this case) if a particular key is missing in the JSON data.
      // The map parameter represents the JSON data that you want to convert into an ArticleModel instance.
      author: map['author'] ?? "",
      title: map['title'] ?? "",
      description: map['description'] ?? "",
      url: map['url'] ?? "",
      urlToImage: map['urlToImage'] != null && map['urlToImage'] != "" ? map['urlToImage'] : kDefaultImage,
      publishedAt: map['publishedAt'] ?? "",
      content: map['content'] ?? "",
    );
  }

  factory ArticleModel.fromEntity(ArticleEntity entity) {
    return ArticleModel(
      id: entity.id,
      author: entity.author,
      title: entity.title,
      description: entity.description,
      url: entity.url,
      urlToImage: entity.urlToImage,
      publishedAt: entity.publishedAt,
      content: entity.content
    );
  }
}
