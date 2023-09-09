import 'package:flutter/material.dart';
import 'package:flutter_examples/pages/alert_dialog_page.dart';
import 'package:flutter_examples/pages/align_page.dart';
import 'package:flutter_examples/pages/aspect_ratio.dart';
import 'package:flutter_examples/pages/baseline.dart';
import 'package:flutter_examples/pages/button_page.dart';
import 'package:flutter_examples/pages/checkbox_page.dart';
import 'package:flutter_examples/pages/circle_avatar_page.dart';
import 'package:flutter_examples/pages/column_page.dart';
import 'package:flutter_examples/pages/constrained_page.dart';
import 'package:flutter_examples/pages/container_page.dart';
import 'package:flutter_examples/pages/dropdown_page.dart';
import 'package:flutter_examples/pages/icon_button_page.dart';
import 'package:flutter_examples/pages/icon_page.dart';
import 'package:flutter_examples/pages/image_page.dart';
import 'package:flutter_examples/pages/language_page.dart';
import 'package:flutter_examples/pages/limitedbox_page.dart';
import 'package:flutter_examples/pages/margin_page.dart';
import 'package:flutter_examples/pages/offstage.dart';
import 'package:flutter_examples/pages/padding_page.dart';
import 'package:flutter_examples/pages/placeholder_page.dart';
import 'package:flutter_examples/pages/popupmenu_page.dart';
import 'package:flutter_examples/pages/profile.dart';
import 'package:flutter_examples/pages/row_page.dart';
import 'package:flutter_examples/pages/scaffold_page.dart';
import 'package:flutter_examples/pages/sizedbox_page.dart';
import 'package:flutter_examples/pages/snackbar_page.dart';
import 'package:flutter_examples/pages/stack_page.dart';
import 'package:flutter_examples/pages/tabbar_page.dart';
import 'package:flutter_examples/pages/text_page.dart';
import 'package:flutter_examples/pages/toggle_button_page.dart';
import 'package:flutter_examples/pages/tooltip_page.dart';
import 'package:flutter_examples/pages/transform_page.dart';
import 'package:flutter_examples/pages/tween_animation_builder_page.dart';
import 'package:flutter_examples/pages/vertical_divider_page.dart';
import 'package:flutter_examples/pages/visibility_page.dart';

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
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Visibility'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VisibilityPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('VerticalDivider'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const VerticalDividerPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Tooltip'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TooltipPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Placeholder'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PlaceholderPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Column'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ColumnPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Row'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RowPage()),
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
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('ToggleButton'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ToggleButtonPage()),
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
                  title: const Text('Scaffold'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScaffoldPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Tabbar,TabBarView'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TabbarPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('AlertDialog'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AlertDialogPage()),
                    );
                  },
                ),
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
                  title: const Text('Stack'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const StackPage()),
                    );
                  },
                ),
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
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Column'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ColumnPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Row'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RowPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Align'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AlignPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Aspect Ratio'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AspectRatioPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Baseline'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BaselinePage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Transform'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TransformPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('LimitedBox'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LimitedBoxPage()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('Offstage'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OffstagePage()),
                    );
                  },
                ),
              ]),
          ExpansionTile(
              title: const Text("Animation "),
              leading: const Icon(Icons.menu_open),
              children: [
                ListTile(
                  leading: const Icon(Icons.verified_user),
                  title: const Text('TweenAnimationBuilder'),
                  onTap: () {
                    Navigator.pop(context); // Close the drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const TweenAnimationBuilderPage()),
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
