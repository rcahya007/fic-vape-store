import 'package:flutter/material.dart';
import 'package:vape_store/common/global_data.dart';
import 'package:vape_store/presentation/my_cart/my_cart.dart';

class BottomNavBarDetailProduct extends StatelessWidget {
  const BottomNavBarDetailProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      padding: const EdgeInsets.all(0),
      height: 100,
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.only(
          top: 22,
          left: 24,
          bottom: 21,
          right: 25,
        ),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1,
              color: Colors.black.withOpacity(0.4),
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: poppinsBlack.copyWith(
                    color: colorBlack.withOpacity(0.4),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'PKR 1,190',
                  style: poppinsBlack.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyCart(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: colorBlack,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 18,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: colorWhite,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Add to Cart',
                        style: poppinsWhite.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
