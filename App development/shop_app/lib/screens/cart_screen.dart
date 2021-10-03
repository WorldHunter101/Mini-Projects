import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/cart.dart';
import 'package:shop_app/widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart-screen';
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Spacer(),
                  Chip(label: Text("\$${cart.totalAmount.toString()}"),
                  backgroundColor: Theme.of(context).primaryColor,),
                  FlatButton(onPressed: () {}, child: Text('ORDER NOW'),
                  textColor: Theme.of(context).primaryColor,),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(child: ListView.builder(
              itemCount: cart.itemCount,
              itemBuilder: (context, index)=> CartItems(
                id: cart.items.values.toList()[index].id,
                price: cart.items.values.toList()[index].price,
                title: cart.items.values.toList()[index].title,
                quantity: cart.items.values.toList()[index].quantity,
              )))
        ],
      ),
    );
  }
}
