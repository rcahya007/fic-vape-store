import 'package:flutter/material.dart';
import 'package:vape_store/common/global_data.dart';

class DetailImageProduct extends StatelessWidget {
  const DetailImageProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 369,
          width: 341,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            color: Colors.amber,
          ),
        ),
        Positioned(
          right: 20,
          top: 20,
          child: Container(
            height: 57,
            width: 61,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colorWhite,
            ),
            child: const Center(
              child: Icon(
                Icons.favorite_border_rounded,
                size: 35,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
