import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones ',
      subTitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicator',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
        MenuItem(
      title: 'Snackbars y diálogos',
      subTitle: 'Indicadores en pantalla',
      link: '/Snackbars',
      icon: Icons.info_outline_rounded),
  MenuItem(
      title: 'Animaciones',
      subTitle: 'Animaciones en flutter',
      link: '/animated',
      icon: Icons.animation_outlined),
  MenuItem(
      title: 'Tutorial',
      subTitle: 'Tutorial para aplicación',
      link: '/animated',
      icon: Icons.book_online_outlined),
  MenuItem(
      title: 'Scroll infinito',
      subTitle: 'scroll infinito',
      link: '/animated',
      icon: Icons.screen_lock_portrait_outlined)
];
