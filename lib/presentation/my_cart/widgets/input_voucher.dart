import 'package:flutter/material.dart';
import 'package:vape_store/common/global_data.dart';

class InputVoucher extends StatelessWidget {
  const InputVoucher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Container(
        height: 53,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: const Color(0xffF2F2F2),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 15,
            ),
            hintText: 'Add a voucher',
            hintStyle: poppinsBlack.copyWith(
              fontSize: 16,
              color: colorBlack.withOpacity(0.4),
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
