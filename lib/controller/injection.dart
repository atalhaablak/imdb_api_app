import 'package:get_it/get_it.dart';
import 'package:imdp_api_app/controller/api_services.dart';
import 'package:imdp_api_app/screens/home/home_page_view_model.dart';
import 'package:imdp_api_app/screens/tabbar/tabbar_view.dart';
import 'package:imdp_api_app/screens/tabbar/tabbar_view_model.dart';
import 'package:imdp_api_app/screens/userInfo/user_info_view_model.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  //services
  serviceLocator.registerLazySingleton<IBookService>(() => BookService());

  //viewModels
  serviceLocator.registerLazySingleton<HomePageViewModel>(() => HomePageViewModel(serviceLocator<IBookService>()));
  serviceLocator.registerLazySingleton<UserInfoViewModel>(() => UserInfoViewModel());
  serviceLocator.registerLazySingleton<TabbarViewModel>(() => TabbarViewModel());
}
