import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vape_store/bloc/checkout/checkout_bloc.dart';
import 'package:vape_store/bloc/detail_product/detail_product_bloc.dart';
import 'package:vape_store/bloc/get_products/get_products_bloc.dart';
import 'package:vape_store/bloc/login/login_bloc.dart';
import 'package:vape_store/data/datasources/auth_remote_datasource.dart';
import 'package:vape_store/data/datasources/product_remote_datasource.dart';
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
