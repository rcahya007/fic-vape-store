import 'package:flutter/material.dart';
import 'package:vape_store/common/global_data.dart';
import 'package:vape_store/data/datasources/auth_local_datasource.dart';
import 'package:vape_store/presentation/auth/login_page.dart';
import 'package:vape_store/presentation/checkout/checkout_page.dart';

class BottomNavBarMyCart extends StatelessWidget {
  const BottomNavBarMyCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      padding: const EdgeInsets.all(0),
      height: 100,
      color: Colors.white,
      child: GestureDetector(
        onTap: () async {
          final signIn = await AuthLocalDatasource().isLogin();
          if (signIn) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CheckoutPage(),
                ));
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ));
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 22,
            vertical: 25,
          ),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          child: Container(
            height: 58,
            width: 341,
            decoration: BoxDecoration(
              color: colorBlack,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Checkout',
                  style: poppinsWhite.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_outlined,
                  color: colorWhite,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
