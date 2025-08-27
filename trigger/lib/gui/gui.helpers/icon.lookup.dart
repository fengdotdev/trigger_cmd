



import 'package:flutter/material.dart';


// if icon not found return default icon
Widget getIcon(String iconName) {
// Busca el icono en el mapa
  final iconData = _iconMap[iconName.toLowerCase()];

  // Retorna el encontrado o un ícono por defecto
  return Icon(iconData ?? Icons.device_unknown);
}


final Map<String, IconData> _iconMap = {
  'home': Icons.home,
  'search': Icons.search,
  'settings': Icons.settings,
  'person': Icons.person,
  'camera': Icons.camera_alt,
  'email': Icons.email,
  // agrega más íconos según lo que necesites
};