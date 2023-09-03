import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vape_store/bloc/add_voucher/add_voucher_bloc.dart';
import 'package:vape_store/bloc/biaya_courir/biaya_courir_bloc.dart';
import 'package:vape_store/bloc/checkout/checkout_bloc.dart';
import 'package:vape_store/bloc/data_checkout/data_checkout_bloc.dart';
import 'package:vape_store/bloc/detail_product/detail_product_bloc.dart';
import 'package:vape_store/bloc/get_kota_asal/get_kota_asal_bloc.dart';
import 'package:vape_store/bloc/get_kota_tujuan/get_kota_tujuan_bloc.dart';
import 'package:vape_store/bloc/get_products/get_products_bloc.dart';
import 'package:vape_store/bloc/get_provinsi_asal/get_provinsi_asal_bloc.dart';
import 'package:vape_store/bloc/get_provinsi_tujuan/get_provinsi_tujuan_bloc.dart';
import 'package:vape_store/bloc/login/login_bloc.dart';
import 'package:vape_store/bloc/order/order_bloc.dart';
import 'package:vape_store/bloc/register/register_bloc.dart';
import 'package:vape_store/data/datasources/auth_remote_datasource.dart';
import 'package:vape_store/data/datasources/order_remote_datasource.dart';
import 'package:vape_store/data/datasources/product_remote_datasource.dart';
import 'package:vape_store/data/datasources/raja_ongkir_datasource.dart';
import 'package:vape_store/data/datasources/voucher_datasource.dart';
import 'package:vape_store/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetProductsBloc(ProductRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => DetailProductBloc(ProductRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => CheckoutBloc(),
        ),
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => GetProvinsiAsalBloc(RajaOngkirDatasource()),
        ),
        BlocProvider(
          create: (context) => GetKotaAsalBloc(RajaOngkirDatasource()),
        ),
        BlocProvider(
          create: (context) => GetProvinsiTujuanBloc(RajaOngkirDatasource()),
        ),
        BlocProvider(
          create: (context) => GetKotaTujuanBloc(RajaOngkirDatasource()),
        ),
        BlocProvider(
          create: (context) => BiayaCourirBloc(RajaOngkirDatasource()),
        ),
        BlocProvider(
          create: (context) => DataCheckoutBloc(),
        ),
        BlocProvider(
          create: (context) => AddVoucherBloc(VoucherDatasource()),
        ),
        BlocProvider(
          create: (context) => OrderBloc(OrderRemoteDatasource()),
        ),
        BlocProvider(
          create: (context) => RegisterBloc(AuthRemoteDatasource()),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const FirstPage(),
      ),
    );
  }
}
