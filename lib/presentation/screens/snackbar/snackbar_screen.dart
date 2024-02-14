import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    final snackbar = SnackBar(
      content: const Text('pailander el inmortal'),
      action: SnackBarAction(label: 'OK', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text('¿Estas seguro?'),
              content: const Text(
                  'Nisi nulla do ex id elit qui est ullamco cillum. Aliquip dolor amet ipsum exercitation qui adipisicing ad sit pariatur tempor. Reprehenderit laborum deserunt esse elit reprehenderit sint eiusmod officia. Esse non cillum exercitation ad esse sit veniam tempor culpa. Pariatur ipsum consectetur mollit elit nostrud dolore. Aliquip incididunt veniam occaecat enim adipisicing est veniam enim fugiat adipisicing.'),
              actions: [
                TextButton(onPressed: () { context.pop();  }, child: const Text('Cancelar')),
                FilledButton(onPressed: () { Navigator.of(context).pop() ; }, child: const Text('Aceptar'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('snackbars y dialogos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Esse reprehenderit eiusmod proident sit laborum non nisi deserunt. Nisi sunt est magna do. Officia pariatur esse dolor laborum adipisicing duis tempor reprehenderit officia incididunt ad. In exercitation exercitation do adipisicing mollit nostrud cupidatat nulla. Consectetur voluptate minim esse ut sunt enim mollit nostrud nisi. Non exercitation tempor irure voluptate et id ex. Reprehenderit officia commodo culpa pariatur deserunt et magna commodo in consequat et.')
                  ]);
                },
                child: const Text("Licencias usadas")),
            FilledButton.tonal(
                onPressed: () {
                  openDialog(context);
                },
                child: const Text("Mostrar diálogo"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () {
            showCustomSnackbar(context);
          },
          label: const Text('Mostrar snackbar')),
    );
  }
}
