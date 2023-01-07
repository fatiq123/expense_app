class Transcation {
  final String? id;
  final String? title;
  final double? amount;
  final DateTime? date;
  // if we not make a ? then we have to put required in named constructor.
  Transcation({this.id, this.title, this.amount, this.date});
}
