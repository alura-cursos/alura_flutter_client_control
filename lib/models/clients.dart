import 'package:flutter/material.dart';
import 'package:client_control/models/client.dart';

class Clients extends ChangeNotifier {
  List<Client> clients;

  Clients({
    required this.clients
  });
}