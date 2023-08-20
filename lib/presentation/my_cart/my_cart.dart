import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vape_store/bloc/checkout/checkout_bloc.dart';
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
                      BlocBuilder<CheckoutBloc, CheckoutState>(
                        builder: (context, state) {
                          if (state is CheckoutLoaded) {
                            final uniqueItem = state.items.toSet().length;
                            final dataSet = state.items.toSet();
                            return ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: uniqueItem,
                              itemBuilder: (context, index) {
                                return ProductItem(
                                  dataProduct: dataSet.elementAt(index),
                                );
                              },
                            );
                          }
                          return const Column(
                            children: [
                              Center(
                                child: Text('data tidak ada'),
                              )
                            ],
                          );
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const InputVoucher(),
                      const SizedBox(
                        height: 30,
                      ),
                      BlocBuilder<CheckoutBloc, CheckoutState>(
                        builder: (context, state) {
                          if (state is CheckoutLoaded) {
                            final subTotal = state.items.fold(
                                0,
                                (previousValue, element) =>
                                    previousValue +
                                    element.attributes!.productPrice!);
                            return Padding(
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
                                        CurrencyFormat.convertToIdr(
                                            subTotal, 0),
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
                                        'Rp. 0',
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
                                        'Rp. 0',
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
                                        CurrencyFormat.convertToIdr(
                                            subTotal, 0),
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
                            );
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                        },
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
