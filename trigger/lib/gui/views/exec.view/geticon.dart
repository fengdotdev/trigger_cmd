
// Helper function para íconos (asume que ya tienes esta función)
import 'package:flutter/material.dart';

IconData getIcon(String iconName) {
  switch (iconName.toLowerCase()) {
    case 'person':
      return Icons.person;
    case 'folder':
      return Icons.folder;
    case 'settings':
      return Icons.settings;
    case 'terminal':
      return Icons.terminal;
    case 'code':
      return Icons.code;
    case 'network':
      return Icons.wifi;
    case 'security':
      return Icons.security;
    case 'download':
      return Icons.download;
    case 'upload':
      return Icons.upload;
    case 'search':
      return Icons.search;
    default:
      return Icons.terminal;
  }
}