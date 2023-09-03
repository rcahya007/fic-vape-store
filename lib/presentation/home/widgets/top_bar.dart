import 'package:flutter/material.dart';
import 'package:vape_store/common/global_data.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Discover',
                style: poppinsBlack.copyWith(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Stack(
                children: [
                  const Icon(
                    Icons.notifications_none,
                    size: 30,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        color: colorBlack,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        border: Border.all(
                          width: 2,
                          color: colorWhite,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: poppinsWhite.copyWith(
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            children: [
              Flexible(
                child: Container(
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF2F2F2),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 12,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintStyle: poppinsBlack.copyWith(
                            color: colorBlack.withOpacity(0.4),
                            fontSize: 16,
                          ),
                          border: InputBorder.none,
                          hintText: 'Search anything',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 9,
              ),
              Container(
                height: 53,
                width: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorBlack,
                ),
                child: Center(
                  child: Icon(
                    Icons.filter_list_rounded,
                    color: colorWhite,
                    size: 28,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
