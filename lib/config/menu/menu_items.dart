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
      title: 'Riverpod Counter',
      subTitle: 'Introducción a riverpod',
      link: '/counter',
      icon: Icons.countertops_outlined),
        MenuItem(
      title: 'Riverpod Cambiar tema',
      subTitle: 'Cambiar color de la aplicación',
      link: '/theme-changer',
      icon: Icons.countertops_outlined),
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
      title: 'Animated container',
      subTitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_outlined),
  MenuItem(
      title: 'UI Controls',
      subTitle: 'Una serie de controles de flutter',
      link: '/UIcontrols',
      icon: Icons.car_rental_rounded),
  MenuItem(
      title: 'Introducción a la  aplicación',
      subTitle: 'Pequeño tutorial introductorio',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'Scroll infinito',
      subTitle: 'scroll infinito',
      link: '/infinite',
      icon: Icons.screen_lock_portrait_outlined),
];
