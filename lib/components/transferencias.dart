import 'package:flutter_application/components/contacts.dart';

class Transaction {
  final double value;
  final Contact contact;

  Transaction(this.value, this.contact);

  @override
  String toString(){
    return 'Trans(value: $value,contact:$contact)';
  }
}