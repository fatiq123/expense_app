import 'package:expense_app/models/transaction.dart';
import 'package:expense_app/widgets/user_transactions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Transcation> transcations = [];

  // String? amountInput;
  // String? titleInput;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expense App'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                child: const Card(
                  color: Colors.blue,
                  elevation: 5.0,
                  child: Text('CART!'),
                ),
              ),
              const UserTransaction(),
            ],
          ),
        ),
      ),
    );
  }
}
