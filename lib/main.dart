import 'package:client_control/models/clients.dart';
import 'package:client_control/pages/client_types_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/client_type.dart';
import 'models/types.dart';
import 'pages/clients_page.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Clients(clients: [])),
    ChangeNotifierProvider(create: (context) => Types(types: [
      ClientType(name: 'Platinum', icon: Icons.credit_card),
      ClientType(name: 'Golden', icon: Icons.card_membership),
      ClientType(name: 'Titanium', icon: Icons.credit_score),
      ClientType(name: 'Diamond', icon: Icons.diamond),
    ]))
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de clientes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ClientsPage(title: 'Clientes'),
        '/tipos': (context) => const ClientTypesPage(title: 'Tipos de cliente'),
      },
    );
  }
}