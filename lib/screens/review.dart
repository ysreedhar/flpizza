import 'package:flutter/material.dart';
import 'package:flpizza/code/pizza.dart';

class Review extends StatelessWidget{
  pizza _pizzaOrder;

  List<String> _list = new List<String>();

  Review({order:null}){
    _pizzaOrder = order;
    
    _list.add("Size: ${_pizzaOrder.size}");
    _list.add(" ");
    _list.add("Toppings:");

    _pizzaOrder.toppings.forEach((String name, bool value){
      if(value) _list.add(name);

    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Review Your Order'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),

      ),

    );
  }
}