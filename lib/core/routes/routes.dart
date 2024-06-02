import 'package:go_router/go_router.dart';
import 'package:news_retrofit/features/daily_news/presentation/pages/article_detail/article_detail.dart';
import 'package:news_retrofit/features/daily_news/presentation/pages/home/daily_news.dart';
import 'package:news_retrofit/features/daily_news/presentation/pages/saved_articles/saved_article.dart';

class AppRouter {
  static GoRouter get router => GoRouter(
        initialLocation: '/',
        routes: <RouteBase>[
          GoRoute(
            name: 'daily-news',
            path: '/',
            builder: (context, state) => const DailyNews(),
          ),
          GoRoute(
            name: 'articleDetails',
            path: '/ArticleDetails',
            builder: (context, state) => const ArticleDetailsView(),
          ),
          GoRoute(
            name: 'savedArticles',
            path: '/SavedArticles',
            builder: (context, state) => const SavedArticles(),
          ),
        ],
      );
}
