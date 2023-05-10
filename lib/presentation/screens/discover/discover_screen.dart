import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    final otroProvider = Provider.of<DiscoverProvider>(context);
    return const Scaffold(
      body: Center(child: Text('Discover Screen')),
    );
  }
}
