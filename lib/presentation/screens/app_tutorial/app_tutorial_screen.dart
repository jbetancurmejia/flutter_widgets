import 'dart:ffi';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Busca la comida',
      'Irure fugiat aliqua ad duis sint ullamco id velit elit officia ex elit.',
      'assets/images/1.png'),
  SlideInfo('Entrega rápida', 'Ullamco magna ea ad eu qui proident dolore.',
      'assets/images/2.png'),
  SlideInfo(
      'Disfruta la comida',
      'Non ad consequat dolor nisi ad veniam mollit veniam mollit aliqua laboris.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatefulWidget {
  static const String name = 'apptutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();

  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      if (!endReached && page >= (slides.length - 1.5)) {
        print('una vez shiow');
        setState(() {
          endReached = true;
        });
      } else if (endReached && page < (slides.length - 1.5)) {
        print('una vez hide');
        setState(() {
          endReached = false;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text('Tutorial')),
        body: Stack(
          children: [
            PageView(
              controller: pageViewController,
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((slideData) => _Slide(
                      slideData.title, slideData.caption, slideData.imageUrl))
                  .toList(),
            ),
            Positioned(
                right: 40,
                top: 30,
                child: TextButton(
                    child: const Text('Salir'),
                    onPressed: () {
                      context.pop();
                    })),
            endReached
                ? Positioned(
                    bottom: 30,
                    right: 30,
                    child: FadeInRight(
                      delay: const Duration(seconds: 1),
                      child: FilledButton(
                          onPressed: () {
                            context.pop();
                          },
                          child: const Text('comenzar')),
                    ))
                : const SizedBox()
          ],
        ));
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(this.title, this.caption, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imageUrl, width: 500),
            const SizedBox(height: 20),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(height: 20),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
