import 'package:equatable/equatable.dart';

// We use Equatable to allow easy value comparison. This will help us later managing state in the bloc
class ArticleEntity extends Equatable{
  /*By using the ? symbol, you're indicating that each of these variables can have a value of their respective types (int, String) or be null,
  which is useful for scenarios where the data might not always be available or provided. 
  The final keyword signifies that these variables cannot be reassigned once they've been given a value.*/ 
  final int ? id;
  final String ? author;
  final String ? title;
  final String ? description;
  final String ? url;
  final String ? urlToImage;
  final String ? publishedAt;
  final String ? content;

  const ArticleEntity({
    this.id,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content

  });
// Equatable comes with a props property and the purpose is object comparison. It's a getter method that will return a list of objects
  @override
  List < Object ? > get props{
    return [
      id,
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
      content
    ];
  }
}