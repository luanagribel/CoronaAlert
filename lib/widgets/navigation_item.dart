import 'package:coronasrs/routes/routes.dart';
import 'package:flutter/material.dart';

import 'interative_nav_item.dart';

class NavigationItem extends StatelessWidget {
  final String title;
  final String routeName;
  final bool selected;
  final Function onHighlight;

  const NavigationItem(
      {@required this.title,
      @required this.routeName,
      @required this.selected,
      @required this.onHighlight});

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width > size.height ? size.height : size.width;

    if (width < 722) {
      return gestureMenuPhone();
    } else if (width > 722) {
      return gestureMenuDesktop();
    } else {
      return gestureMenuDesktop();
    }
  }

  GestureDetector gestureMenuPhone() {
    return GestureDetector(
      onTap: () {
        navKey.currentState.pushNamed(routeName);
        onHighlight(routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: InteractiveNavItem(
          text: title,
          routeName: routeName,
          selected: selected,
        ),
      ),
    );
  }

  GestureDetector gestureMenuDesktop() {
    return GestureDetector(
      onTap: () {
        navKey.currentState.pushNamed(routeName);
        onHighlight(routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: InteractiveNavItem(
          text: title,
          routeName: routeName,
          selected: selected,
        ),
      ),
    );
  }
}
