// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home_page_provider.dart';

class TempPlaceHolder extends StatelessWidget {
  const TempPlaceHolder({
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
