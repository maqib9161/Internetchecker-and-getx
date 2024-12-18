import 'package:internet_connection_checker/internet_connection_checker.dart';

Future<bool> internetchecker()async{
  final bool isConnected = await InternetConnectionChecker.instance.hasConnection;
   print("Connected");
  print(isConnected);
 return isConnected;
}