import 'package:flutter/material.dart';
// import 'dart:js' as js;

import 'package:url_launcher/url_launcher.dart';

class WebViewMain extends StatelessWidget {
  const WebViewMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /* MaterialButton(
              onPressed: () {
                const url = 'www.google.com';
                js.context.callMethod('open', [url, '_blank']);
              },
              child: const Text(
                  'Navigate to external url in new tab "Use dart:js"'),
            ),
            MaterialButton(
              onPressed: () {
                const url = 'www.google.com';
                js.context.callMethod('open', [url, '_self']);
              },
              child:
                  const Text('Navigate to external url imbibe "Use dart:js"'),
            ), */
            TextButton(
                onPressed: () {
                  final Uri uri =
                      Uri(scheme: 'https', host: 'www.google.com', path: '/');
                  launchUrl(uri, webOnlyWindowName: '_self');
                },
                child: const Text(
                  "Abrir web externa con url launcher en el mismo tab",
                  style: TextStyle(fontSize: 40.0),
                )),
            TextButton(
                onPressed: () {
                  final Uri uri = Uri(
                      scheme: 'https',
                      host: 'www.google.com',
                      path: '/',
                      queryParameters: <String, String>{
                        'body': Uri.encodeComponent(
                            'Example Subject & Symbols are allowed!'),
                      });
                  launchUrl(uri, webOnlyWindowName: '_blank');
                },
                child: const Text(
                  "Abrir web externa con url launcher en un nuevo tab",
                  style: TextStyle(fontSize: 40.0),
                ))
          ],
        ),
      ),
    );
  }
}
