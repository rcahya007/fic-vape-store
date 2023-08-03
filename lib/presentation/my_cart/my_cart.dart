import 'package:flutter/material.dart';
import 'package:vape_store/common/global_data.dart';
import 'package:vape_store/presentation/my_cart/widgets/bottom_nav_bar_my_cart.dart';
import 'package:vape_store/presentation/my_cart/widgets/input_voucher.dart';
import 'package:vape_store/presentation/my_cart/widgets/product_item.dart';
import 'package:vape_store/presentation/my_cart/widgets/top_bar_my_cart.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
          ),
          child: Column(
            children: [
              const TopBarMyCart(),
              const SizedBox(
                height: 20,
              ),
              // CONTAINER CART
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const ProductItem(),
                      const ProductItem(),
                      const ProductItem(),
                      const SizedBox(
                        height: 15,
                      ),
                      const InputVoucher(),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Sub-total',
                                    style: poppinsBlack.copyWith(
                                      fontSize: 16,
                                      color: colorBlack.withOpacity(0.4),
                                    ),
                                  ),
                                ),
                                Text(
                                  'PKR 5,870',
                                  style: poppinsBlack.copyWith(
                                    fontSize: 16,
                                    color: colorBlack,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'VAT (%)',
                                    style: poppinsBlack.copyWith(
                                      fontSize: 16,
                                      color: colorBlack.withOpacity(0.4),
                                    ),
                                  ),
                                ),
                                Text(
                                  'PKR 0.00',
                                  style: poppinsBlack.copyWith(
                                    fontSize: 16,
                                    color: colorBlack,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Shipping fee',
                                    style: poppinsBlack.copyWith(
                                      fontSize: 16,
                                      color: colorBlack.withOpacity(0.4),
                                    ),
                                  ),
                                ),
                                Text(
                                  'PKR 80',
                                  style: poppinsBlack.copyWith(
                                    fontSize: 16,
                                    color: colorBlack,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Total',
                                    style: poppinsBlack.copyWith(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                Text(
                                  'PKR 5,950',
                                  style: poppinsBlack.copyWith(
                                    fontSize: 18,
                                    color: colorBlack,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBarMyCart(),
    );
  }
}
