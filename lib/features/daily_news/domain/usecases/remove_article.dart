import 'package:news_retrofit/core/usecase/usecase.dart';
import 'package:news_retrofit/features/daily_news/domain/entities/article_entity.dart';
import 'package:news_retrofit/features/daily_news/domain/repository/article_repository.dart';

class RemoveArticleUseCase implements UseCase<void, ArticleEntity> {
  final ArticleRepository _articleRepository;

  RemoveArticleUseCase(this._articleRepository);

  @override
  Future<void> call({ArticleEntity? params}) {
    return _articleRepository.removeArticle(params!);
  }
}
