import 'package:expense_app/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'user_transactions.dart';

class TransactionList extends StatelessWidget {
  const TransactionList(this.transactions, {super.key});

  final List<Transcation> transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((e) {
        return Card(
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2)),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text(
                  //  e.amount.toString(),
                  "\$${e.amount}",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.title.toString(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    // e.date.toString(),
                    DateFormat.yMMMd().format(DateTime.now()),
                    style: const TextStyle(color: Colors.green),
                  )
                ],
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
