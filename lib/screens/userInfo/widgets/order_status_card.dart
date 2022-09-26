import 'package:flutter/material.dart';
import 'package:imdp_api_app/product/extension/string_extension.dart';
import 'package:imdp_api_app/product/global/app_text_style.dart';

class OrderStatusCard extends StatelessWidget {
  const OrderStatusCard({super.key});

  final String imagePath = "assets/png/exam_phone.png";
  final String orderNoColor = "#5F5353";
  final String price = "22.989";

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 16, top: 16, bottom: 40),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.timer),
                      SizedBox(width: 12),
                      Text("Sipariş devam ediyor"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        _ProductImageandStock(imagePath: imagePath),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Sipariş No ",
                                    style: AppTextStyle.infoText.textStyle?.copyWith(
                                      color: Color(orderNoColor.colorValue),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Text(
                                    "21816664",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "20/06/2022",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16),
                                child: Row(
                                  children: [
                                    Text(
                                      "$price TL",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("Bu sipariş farklı teslimat yöntemleri içeriyor", style: AppTextStyle.description.textStyle),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ProductImageandStock extends StatelessWidget {
  const _ProductImageandStock({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;
  final String boxBorderColor = "#F5F5F5";
  final String stockColor = "#0C45F5";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          width: 130,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
              ),
              border: Border.all(
                color: Color(boxBorderColor.colorValue),
              )),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 130,
            color: Color(stockColor.colorValue),
            child: Text(
              "+5 ürün",
              textAlign: TextAlign.center,
              style: AppTextStyle.description.textStyle?.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
