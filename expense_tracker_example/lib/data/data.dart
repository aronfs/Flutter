
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> myData = [
  {
    'icon': const FaIcon(FontAwesomeIcons.hotdog, color: Colors.white,),
    'color': Colors.red,
    'name': 'Comida',
    'totalAmount':'-\$ 2.50',
    'date': 'Hoy',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.bagShopping,  color: Colors.white),
     'color': Colors.lime,
    'name': 'Ropa',
    'totalAmount':'-\$ 45.00',
    'date': 'Hoy',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.heartCircleCheck,  color: Colors.white),
     'color': Colors.green,
    'name': 'Salud',
    'totalAmount':'-\$ 45.00',
    'date': 'Today',
  },
  {
    'icon': const FaIcon(FontAwesomeIcons.busSimple,  color: Colors.white),
     'color': Colors.blueAccent,
    'name': 'Servicios de Transporte',
    'totalAmount':'-\$ 45.00',
    'date': 'Today',
  }
];