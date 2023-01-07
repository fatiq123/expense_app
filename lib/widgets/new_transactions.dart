import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  NewTransaction(this.addTransactionHandler, {super.key});

  final Function addTransactionHandler;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitData() {
    // it is cut from onPressed in TextButton
    //so that eveywhere it can be use
    final enteredAmount = double.parse(amountController.text);
    final enteredTitle = titleController.text;
    // these are for validation if user enter transaction without entering data in fields
    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }
    addTransactionHandler(
      enteredTitle,
      enteredAmount,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titleController,
              onChanged: ((_) => submitData()),
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onChanged: ((_) => submitData()),
              //(_) i get a argument but i dont care about it
              // value is by default if we not include this then there will be error alse can use (_)
              // onChanged: (value) {
              //   amountInput = value;
              // },
            ),
            TextButton(
              onPressed: submitData,
              child: const Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purple),
              ),
            )
          ],
        ),
      ),
    );
  }
}
