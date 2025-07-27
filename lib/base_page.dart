import 'package:flutter/widgets.dart';

abstract class BasePage extends StatefulWidget {
  const BasePage({
    super.key,
  });
}

abstract class BasePageState<T extends BasePage> extends State<T> {
  void refreshPage() {
    if (mounted) {
      setState(() {});
    }
  }

  Size get screenSize => MediaQuery.of(context).size;
}

abstract class BasePageView<PageWidget extends BasePage, PageState extends BasePageState>
    extends StatelessWidget {
  const BasePageView({
    super.key,
    required this.page,
  });

  final PageState page;

  PageWidget get widget => page.widget as PageWidget;

  Size get screenSize => page.screenSize;
}
