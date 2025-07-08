import 'package:flutter/material.dart';

class PageDeux extends StatefulWidget {
  const PageDeux({super.key});

  @override
  State<PageDeux> createState() => _PageDeuxState();
}

class _PageDeuxState extends State<PageDeux> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Deux'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Contenu de la page deux'),
        ),
      ),
    );
  }
}
