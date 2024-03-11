

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


//Estado de colores inmutable
final colorListProvider= Provider((ref) => colorList);

// Un simple boolean
final isDarkModeProvider=StateProvider((ref) => false);

// Un simple int
final selectedColorProvider = StateProvider((ref) => 0);