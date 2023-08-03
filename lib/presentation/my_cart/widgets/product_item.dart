import 'package:flutter/material.dart';
import 'package:vape_store/common/global_data.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0,
        right: 25,
        bottom: 25,
        left: 25,
      ),
      child: Container(
        height: 103,
        decoration: BoxDecoration(
          color: const Color(0xffF2F2F2),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 12,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 79,
                width: 83,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(
                    width: 1,
                    color: colorBlack,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
              ),
              const SizedBox(
                width: 17,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Regular fit slogan',
                          style: poppinsBlack.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Size L',
                          style: poppinsBlack.copyWith(
                            fontSize: 12,
                            color: colorBlack.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'PKR 1,190',
                      style: poppinsBlack.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.delete_outline_outlined,
                    color: Color(0xffF60000),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: colorBlack.withOpacity(0.4),
                          ),
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                        ),
                        child: const Icon(
                          Icons.remove,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9),
                        child: Text(
                          '2',
                          style: poppinsBlack.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: colorBlack.withOpacity(0.4),
                          ),
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
