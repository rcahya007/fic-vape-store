// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:vape_store/common/global_data.dart';
import 'package:vape_store/data/models/responses/list_order_response_model.dart';

class CardDetailOrderItem extends StatelessWidget {
  Item dataItem;
  List<Item> dataSemua;

  CardDetailOrderItem({
    Key? key,
    required this.dataItem,
    required this.dataSemua,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dataCount =
        dataSemua.where((element) => element.id == dataItem.id).length;
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: colorWhite,
        boxShadow: [
          BoxShadow(
            color: colorBlack.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 15,
          )
        ],
      ),
      padding: const EdgeInsets.all(
        10,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.account_box_rounded,
                size: 60,
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dataItem.attributes!.productName!,
                      maxLines: 2,
                      style: poppinsBlack.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '$dataCount x ',
                          style: poppinsBlack.copyWith(
                            fontSize: 11,
                            color: colorBlack.withOpacity(0.4),
                          ),
                        ),
                        Text(
                          CurrencyFormat.convertToIdr(
                              dataItem.attributes!.productPrice!, 0),
                          style: poppinsBlack.copyWith(
                            fontSize: 11,
                            color: colorBlack.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Divider(),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Harga',
                    style: poppinsBlack.copyWith(
                      fontSize: 11,
                      color: colorBlack.withOpacity(0.4),
                    ),
                  ),
                  Text(
                    'Rp. 79.000',
                    style: poppinsBlack,
                  )
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 2,
                      color: const Color.fromRGBO(56, 142, 60, 1),
                    )),
                child: Text(
                  'Beli Lagi',
                  style: poppinsBlack.copyWith(
                    fontWeight: FontWeight.w700,
                    color: Colors.green[600],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
