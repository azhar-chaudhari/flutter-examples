import 'package:flutter/material.dart';
import 'package:flutter_examples/pages/button_page.dart';
import 'package:flutter_examples/pages/checkbox_page.dart';
import 'package:flutter_examples/pages/circle_avatar_page.dart';
import 'package:flutter_examples/pages/constrained_page.dart';
import 'package:flutter_examples/pages/container_page.dart';
import 'package:flutter_examples/pages/dropdown_page.dart';
import 'package:flutter_examples/pages/icon_button_page.dart';
import 'package:flutter_examples/pages/icon_page.dart';
import 'package:flutter_examples/pages/image_page.dart';
import 'package:flutter_examples/pages/language_page.dart';
import 'package:flutter_examples/pages/margin_page.dart';
import 'package:flutter_examples/pages/padding_page.dart';
import 'package:flutter_examples/pages/popupmenu_page.dart';
import 'package:flutter_examples/pages/profile.dart';
import 'package:flutter_examples/pages/sizedbox_page.dart';
import 'package:flutter_examples/pages/snackbar_page.dart';
import 'package:flutter_examples/pages/text_page.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.verified_user),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
          ),
          ExpansionTile(
              title: const Text("Basic "),
              leading: const Icon(Icons.menu_open),
              children: [
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Text'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TextPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Image'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImagePage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Icon'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IconPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Container'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContainerPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Padding'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaddingPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Margin'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MarginPage()),
                    );
                  },
                ),
              ]),
          ExpansionTile(
              title: const Text("Buttons, Dropdown, and Selection "),
              leading: const Icon(Icons.menu_open),
              children: [
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Buttons'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ButtonPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Dropdown'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DropdownPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Popup Menu'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PopupMenuPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Checkbox'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CheckboxPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('IconButton'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IconButtonPage()),
                    );
                  },
                ),
              ]),
          ExpansionTile(
              title: const Text("UI Elements"),
              leading: const Icon(Icons.menu_open),
              children: [
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('SnackBar'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SnackBarPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('CircleAvatar'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CircleAvatarPage()),
                    );
                  },
                ),
              ]),
          ExpansionTile(
              title: const Text("Layout,Sizing "),
              leading: const Icon(Icons.menu_open),
              children: [
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('SizedBox'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SizedBoxPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('ConstrainedBox'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConstrainedBoxPage()),
                    );
                  },
                ),
              ]),
          ExpansionTile(
              title: const Text("Others"),
              leading: const Icon(Icons.menu_open),
              children: [
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Language'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LanguagePage()),
                    );
                  },
                ),
              ]),
        ],
      ),
    );
  }
}
