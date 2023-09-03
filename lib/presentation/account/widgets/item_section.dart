// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:vape_store/common/global_data.dart';

class ItemSection extends StatelessWidget {
  String name;
  VoidCallback onTap;
  Icon icon;
  ItemSection({
    Key? key,
    required this.name,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            name,
            style: poppinsBlack.copyWith(
              fontSize: 18,
            ),
          ),
        ),
        IconButton(
          icon: icon,
          onPressed: onTap,
        )
      ],
    );
  }
}
