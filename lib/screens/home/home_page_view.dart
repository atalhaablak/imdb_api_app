import 'package:flutter/material.dart';
import 'package:imdp_api_app/controller/api_services.dart';
import 'package:imdp_api_app/product/service/project_dio.dart';
import 'package:imdp_api_app/screens/home/home_page_provider.dart';
import 'package:imdp_api_app/screens/home/widgets/card_info.dart';
import 'package:imdp_api_app/screens/home/widgets/card_poster.dart';
import 'package:provider/provider.dart';

import '../../models/by_name_model.dart';
import '../../product/global/theme_notifier.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> with ProjectDioMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomePageProvider>(
      create: (context) => HomePageProvider(BookService(service)),
      builder: ((context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Movie List"),
            actions: [
              IconButton(
                  onPressed: () {
                    context.read<ThemeNotifier>().changeTheme();
                  },
                  icon: const Icon(Icons.dark_mode_rounded)),
            ],
          ),
          body: Column(
            children: [
              const _TempPlaceHolder(),
              Expanded(child: _nameListView(context, context.watch<HomePageProvider>().data ?? [])),
            ],
          ),
        );
      }),
    );
  }

  ListView _nameListView(BuildContext context, List<Result> items) {
    return ListView.builder(
      itemCount: (context.watch<HomePageProvider>().data?.length),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (() {}),
          child: _createMovieCard(items, index),
        );
      },
    );
  }

  Widget _createMovieCard(List<Result> items, int index) {
    return Card(
      elevation: 5,
      child: Row(
        children: [
          CardPoster(image: items[index].poster.toString()),
          Expanded(
              child: CardMovieInfo(
            title: items[index].title.toString(),
            year: items[index].year.toString(),
            type: items[index].type.toString(),
          ))
        ],
      ),
    );
  }
}

class _TempPlaceHolder extends StatelessWidget {
  const _TempPlaceHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<HomePageProvider, bool>(
      builder: (context, value, child) {
        return value ? const CircularProgressIndicator() : const Text("");
      },
      selector: (context, provider) {
        return provider.isLoading;
      },
    );
  }
}
