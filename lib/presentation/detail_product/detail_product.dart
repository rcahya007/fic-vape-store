import 'package:flutter/material.dart';
import 'package:vape_store/common/global_data.dart';
import 'package:vape_store/presentation/detail_product/widgets/bottom_nav_bar_detail_product.dart';
import 'package:vape_store/presentation/detail_product/widgets/detail_image_product.dart';
import 'package:vape_store/presentation/detail_product/widgets/top_bar_detail_product.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
          ),
          child: Column(
            children: [
              const TopBarDetailProduct(),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const DetailImageProduct(),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'REGULAR FIT SLOGAN',
                          style: poppinsBlack.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 24,
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Row(
                              children: [
                                Text(
                                  '4.5/5',
                                  style: poppinsBlack.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '(45 reviews)',
                                  style: poppinsBlack.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: colorBlack.withOpacity(0.4),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 21,
                        ),
                        Text(
                          'The name says it all, the right size slightly snugs the body leaving enough room for comfort in the sleeves and waist.',
                          style: poppinsBlack.copyWith(
                            fontSize: 16,
                            color: colorBlack.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBarDetailProduct(),
    );
  }
}
