import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/cart/presentation/providers/cart_provider.dart';
import 'features/cart/domain/repositories/cart_repository_impl.dart';
import 'main.dart';

Widget buildApp(){
  final cartRepository = CartRepositoryImpl();

  return ChangeNotifierProvider(
    create: (_) => CartProvider(repository: cartRepository),
    child: const MyApp(),
  );
}