/// First page - consists of item select options

import 'package:flutter/material.dart';
import 'package:plateron_demo/screens/totalamount_page.dart';
import 'package:provider/provider.dart';

import '../providers/selectitem_provider.dart';

class ItemSelectedPage extends StatefulWidget {
  const ItemSelectedPage({Key? key}) : super(key: key);

  @override
  State<ItemSelectedPage> createState() => _ItemSelectedPageState();
}

class _ItemSelectedPageState extends State<ItemSelectedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          ///Consists of apple and add or decrease quantity option

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
              )
            ],
          ),
          const SizedBox(height: 30,),

          ///Consists of Mango and add or decrease quantity option


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
              )
            ],
          )
        ],
      ),

      ///Page Navigation widget floatingactionbutton

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const TotalAmountPage()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
