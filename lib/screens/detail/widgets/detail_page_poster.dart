import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:imdp_api_app/screens/detail/detail_page_view_model.dart';
import 'package:provider/provider.dart';

class DetailPagePoster extends StatelessWidget {
  const DetailPagePoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<DetailPageViewModel, dynamic>(
      builder: (context, value, child) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          width: MediaQuery.of(context).size.width * 0.6,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
            child: CachedNetworkImage(
              fit: BoxFit.contain,
              imageUrl: context.watch<DetailPageViewModel>().data?.poster.toString() ?? "",
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        );
      },
      selector: (p0, p1) {
        return p1;
      },
    );
  }
}
