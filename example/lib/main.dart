import 'dart:async';

import 'package:external_link_account/external_link_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _message = '';
  final _externalLinkAccountPlugin = ExternalLinkAccount();

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> openLink() async {
    String message;

    try {
      final result = await _externalLinkAccountPlugin.open();
      message = result.message;
    } on PlatformException {
      message = 'Failed to open external link.';
    }

    if (!mounted) return;

    setState(() {
      _message = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: openLink, child: const Text('Open link')),
              ),
              Text(_message),
            ],
          ),
        ),
      ),
    );
  }
}
