import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/screens/cart_screen.dart';
import 'package:shop_app/widgets/badge.dart';
import 'package:shop_app/widgets/products_grid.dart';

enum FilterOptions {
  Favourites,
  All,
}

class ProductOverviewScreen extends StatefulWidget {
  @override
  _ProductOverviewScreenState createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showOnlyFavourites = false;

  @override
  Widget build(BuildContext context) {
    // final productsContainer = Provider.of<Products>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if(selectedValue == FilterOptions.Favourites){
                  _showOnlyFavourites = true;
                }else {
                  _showOnlyFavourites = false;
                }
              });
            },
            icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("Only Favourites"), value: FilterOptions.Favourites,),
                PopupMenuItem(child: Text("Show All"), value: FilterOptions.All,),
              ]),
          Consumer<Cart>(builder: (_, cart , ch) => Badge(child: ch, value: cart.itemCount.toString()),
            child: IconButton(
            icon:
            Icon(
                Icons.shopping_cart), onPressed: () {
              Navigator.of(context).pushNamed(CartScreen.routeName );
            },
          ),
              ),
        ],
        backgroundColor: Colors.pink,
        title: Text('MyShop',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: ProductsGrid(showFavs: _showOnlyFavourites,),
    );
  }
}

