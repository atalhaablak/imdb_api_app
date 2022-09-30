// ignore_for_file: must_call_super

import 'package:flutter/material.dart';
import 'package:imdp_api_app/controller/injection.dart';
import 'package:imdp_api_app/screens/detail/detail_page_view_model.dart';
import 'package:imdp_api_app/screens/detail/widgets/detail_page_appbar.dart';
import 'package:imdp_api_app/screens/detail/widgets/get_movie_info.dart';
import 'package:provider/provider.dart';

class DetailPageView extends StatefulWidget {
  const DetailPageView({super.key});

  @override
  State<DetailPageView> createState() => _DetailPageViewState();
}

class _DetailPageViewState extends State<DetailPageView> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DetailPageViewModel>(
      create: (context) => serviceLocator<DetailPageViewModel>(),
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: context.watch<DetailPageViewModel>().isLoading
                    ? Column(
                        children: const [
                          DetailPageAppBar(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: GetDetailInfo(),
                          ),
                        ],
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      )),
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
