import 'package:flutter/foundation.dart';

class UserInfoViewModel extends ChangeNotifier {
  UserInfoViewModel();

  Map<String, dynamic> userInfoList = {
    "Siparişlerim": 0,
    "Bildirimlerim": 1,
    "Listelerim": 2,
    "Değerlendirmelerim": 3,
    "Sorularım": 4,
    "Takip Ettiğim Mağazalar": 5,
    "Kuponlarım": 6,
    "Adreslerim": 7,
    "Üyelik Bilgilerim": 8,
    "İzin Tercihlerim": 9,
    "Şifre Değiştirme": 10,
  };
}
