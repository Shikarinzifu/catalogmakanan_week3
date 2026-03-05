import 'package:flutter/material.dart';
import '../../domain/entities/product.dart';
import 'package:provider_architecture/core/routes/app_router.dart';
import '../../../cart/presentation/widgets/add_button_widget.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  static final List<Product> _products = [
    Product(id: '1', name: 'Nasi Goreng', price: 15000.0),
    Product(id: '2', name: 'Sate Ayam', price: 20000.0),
    Product(id: '3', name: 'Es Teh', price: 5000.0),
  ];

  @override
  Widget build(BuildContext context){
   return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Makanan'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, AppRouter.cart), 
            icon: Icon(Icons.shopping_cart),
            ),
        ],
        ),
        body: ListView.builder(
          itemCount: _products.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(_products[index].name),
            subtitle: Text('Rp ${_products[index].price}'),
            trailing: AddButtonWidget(product: _products[index]),
          ),
        ),
        );
  }
}