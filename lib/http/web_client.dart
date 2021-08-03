import 'dart:convert';
import 'package:flutter_application/components/contacts.dart';
import 'package:flutter_application/components/transferencias.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    print('REQUEST');
    print('url: ${data.url}');
    print('headers: ${data.headers}');
    print('body: ${data.body}');
    return data;
  }
  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    print('\nRESPONSE');
    print('status code: ${data.statusCode}');
    print('headers: ${data.headers}');
    print('body: ${data.body}');
    return data;
  }
}

Future<List<Transaction>>findAll1() async{
  Client client = InterceptedClient.build(interceptors:[LoggingInterceptor()]);
  final Response response = await client.get(Uri.parse('http://192.168.0.10:8080/transactions'));
  final List<dynamic> decodedJson = jsonDecode(response.body);
  final List<Transaction> transactions = [];
  for(Map<String, dynamic> transactionJson in decodedJson){
    final Map<String, dynamic> contactJson = transactionJson['contact'];
    final Transaction transaction = Transaction(
      transactionJson['value'],
      Contact(
        0,
        contactJson['name'],
        contactJson['accountNumber'],
      ),
    );
    transactions.add(transaction);
  }
  return transactions;
}

Future<Transaction> save1(Transaction transaction) async {
  final Map<String, dynamic> transactionMap = {
    'value': transaction.value,
    'contact': {
      'name': transaction.contact.name,
      'accountNumber': transaction.contact.accountNumber
    }
  };

  final String transactionJson = jsonEncode(transactionMap);
  Client client = InterceptedClient.build(interceptors:[LoggingInterceptor()]);
  final Response response = await client.post(Uri.parse('http://192.168.0.10:8080/transactions'), headers: {
    'Content-type' : 'application/json',
    'password' : '1000'
  }, body: transactionJson);

  Map<String, dynamic> json = jsonDecode(response.body);
  final Map<String, dynamic> contactJson = json['contact'];
  return Transaction(
    json['value'],
    Contact(
      0,
      contactJson['name'],
      contactJson['accountNumber'],
    ),
  );
}

void deleteAll() async{
  Client client = InterceptedClient.build(interceptors:[LoggingInterceptor()]);
  await client.delete(Uri.parse('http://192.168.0.10:8080/transactions'));

}