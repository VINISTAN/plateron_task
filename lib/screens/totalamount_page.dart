/// Second page consists of descriptions and total amount for the items

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:plateron_demo/providers/selectitem_provider.dart';

class TotalAmountPage extends StatefulWidget {
  const TotalAmountPage({Key? key}) : super(key: key);

  @override
  State<TotalAmountPage> createState() => _TotalAmountPageState();
}

class _TotalAmountPageState extends State<TotalAmountPage> {

  ///Fixed rate variable for apple and mango
  int apple_price = 20;
  int mango_price = 20;

  @override
  Widget build(BuildContext context) {

    /// converting provider value to this variable
    int selected_apple_items = (context).watch<AppleProvider>().count;
    int selected_mango_items = (context).watch<MangoProvider>().mangocount;


    return Scaffold(
      appBar: AppBar(),
      body:
      /// Content of the screen
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          ///Apple counts and amount

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Apple"),
              const SizedBox(width : 10),
              FloatingActionButton(
                onPressed: ()=> context.read<AppleProvider>().decrement(),
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width : 10),
              Text('${context.watch<AppleProvider>().count}'),
              const SizedBox(width : 10),
              FloatingActionButton(
                onPressed: ()=> context.read<AppleProvider>().increment(),
                child: const Icon(Icons.add),
              ),
              const SizedBox(width : 10),
              Text('${selected_apple_items * apple_price}'),
            ],
          ),
          const SizedBox(height: 30,),

          ///Mango counts and amount

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Mango"),
              const SizedBox(width : 10),
              FloatingActionButton(
                onPressed: ()=> context.read<MangoProvider>().decrement(),
                child: const Icon(Icons.remove),
              ),
              const SizedBox(width : 10),
              Text('${context.watch<MangoProvider>().mangocount}'),
              const SizedBox(width : 10),
              FloatingActionButton(
                onPressed: ()=> context.read<MangoProvider>().increment(),
                child: const Icon(Icons.add),
              ),
              const SizedBox(width : 10),
              Text('${selected_mango_items * mango_price}'),
            ],
          ),
          SizedBox(height: 40,),

          ///Calculatin total value

          Text('Total Amount ${(selected_mango_items * mango_price) + (selected_apple_items*mango_price)}')
        ],
      ),
    );
  }
}
