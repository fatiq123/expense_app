import 'package:expense_app/widgets/transaction_list.dart';
import 'package:flutter/widgets.dart';

import '../models/transaction.dart';
import 'new_transactions.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
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
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
