import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product_provider.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavs;

  ProductsGrid({this.showFavs});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = showFavs ? productsData.favouriteItems : productsData.items;
    return GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 3/2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return ChangeNotifierProvider.value(
            value: products[index],
            child: ProductItem(
              // id: products[index].id,
              // title: products[index].title,
              // imageUrl: products[index].imageUrl,),
          )
          );
        });
  }
}

