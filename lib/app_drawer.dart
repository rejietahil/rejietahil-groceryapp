import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  //store

  @override
  Widget build(BuildContext context) {
    final List<String> news = [
      'Top Stories',
      'World',
      'Business',
      'Technology',
      'Entertainment',
      'Sports',
      'Science',
      'Health',
    ];

    return Drawer(
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.store),
            title: Text('Shop'),
            onTap: () {
              Navigator.pushNamed(context, '/shop');
            },
          ),
          ListTile(
            leading: const Icon(Icons.receipt_long),
            title: Text('Newsstand'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/newsstand',
                arguments: {'news': news},
              );
            },
          ),
          ListTile(
            title: Text('Who we are'),
            onTap: () {
              Navigator.pushNamed(context, '/info');
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: Text('My Profile'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: Text('Basket'),
            onTap: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
    );
  }
}
