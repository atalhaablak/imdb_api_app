import 'package:flutter/material.dart';
import 'package:imdp_api_app/screens/detail/detail_page_view_model.dart';
import 'package:provider/provider.dart';

import '../../../product/global/app_text_style.dart';
import 'detail_page_poster.dart';

class GetDetailInfo extends StatelessWidget {
  const GetDetailInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<DetailPageViewModel, dynamic>(
      selector: (context, provider) {
        return provider;
      },
      builder: (context, value, child) {
        return Column(
          children: [
            const DetailPagePoster(),
            Text(
              context.watch<DetailPageViewModel>().data?.title.toString() ?? "veriyok",
              maxLines: 2,
              style: AppTextStyle.movieTitle.textStyle,
              textAlign: TextAlign.center,
            ),
            const Divider(color: Colors.orange),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text("Year: ", style: AppTextStyle.subTitle.textStyle),
                Text(
                  context.watch<DetailPageViewModel>().data?.released.toString() ?? "veriyok",
                  style: AppTextStyle.infoText.textStyle,
                ),
                const SizedBox(height: 20),
                Text("Runtime: ", style: AppTextStyle.subTitle.textStyle),
                Text(
                  context.watch<DetailPageViewModel>().data?.runtime.toString() ?? "veriyok",
                  style: AppTextStyle.infoText.textStyle,
                ),
                const SizedBox(height: 20),
                Text("Language: ", style: AppTextStyle.subTitle.textStyle),
                Text(
                  context.watch<DetailPageViewModel>().data?.language.toString() ?? "veriyok",
                  style: AppTextStyle.infoText.textStyle,
                ),
                const SizedBox(height: 20),
                Text("Writer: ", style: AppTextStyle.subTitle.textStyle),
                Text(
                  context.watch<DetailPageViewModel>().data?.writer.toString() ?? "veriyok",
                  style: AppTextStyle.infoText.textStyle,
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Konu", style: AppTextStyle.movieTitle.textStyle),
                    const Divider(
                      color: Colors.orange,
                    ),
                    Text(context.watch<DetailPageViewModel>().data?.plot.toString() ?? "veriyok",
                        style: AppTextStyle.infoText.textStyle),
                  ],
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
