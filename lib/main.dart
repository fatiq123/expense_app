import 'package:expense_app/models/transaction.dart';
import 'package:expense_app/widgets/new_transactions.dart';
import 'package:expense_app/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Transcation> transcations = [];

  // String? amountInput;
  void _startAddNewTransaction(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return NewTransaction(_addNewTransaction);
      },
    );
  }

  final List<Transcation> _userTransactions = [
    Transcation(
      id: 't1',
      title: 'new shoes',
      amount: 99.9,
      date: DateTime.now(),
    ),
    Transcation(
      id: 't2',
      title: 'old shoes',
      amount: 9.9,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transcation(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expense App'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: (() {
                _startAddNewTransaction(context);
              }),
              icon: const Icon(Icons.add),
            )
          ],
        ),
        body: Column(
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
            TransactionList(_userTransactions),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _startAddNewTransaction(context);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
