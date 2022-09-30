import 'package:get_it/get_it.dart';
import 'package:imdp_api_app/controller/api_services.dart';
import 'package:imdp_api_app/screens/historySearch/history_search_view_model.dart';
import 'package:imdp_api_app/screens/home/home_page_view_model.dart';
import 'package:imdp_api_app/screens/search/search_view_model.dart';
import 'package:imdp_api_app/screens/tabbar/tabbar_view_model.dart';

import '../screens/detail/detail_page_view_model.dart';
import '../screens/historySearch/model/history_search_model.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  //services
  serviceLocator.registerLazySingleton<IBookService>(() => BookService());

  //viewModels
  serviceLocator.registerLazySingleton<HomePageViewModel>(() => HomePageViewModel(serviceLocator<IBookService>()));
  serviceLocator.registerLazySingleton<TabbarViewModel>(() => TabbarViewModel());
  serviceLocator.registerLazySingleton<SearchPageViewModel>(() => SearchPageViewModel());
  serviceLocator.registerLazySingleton<HistorySearchViewModel>(() => HistorySearchViewModel());
  serviceLocator.registerLazySingleton<DetailPageViewModel>(() => DetailPageViewModel());

  // Hive Adapters
  serviceLocator.registerLazySingleton<HistorySearchModelAdapter>(() => HistorySearchModelAdapter());
}
