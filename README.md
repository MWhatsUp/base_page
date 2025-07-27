A base class to build page widgets on top of.

## Features

- Provides existing structure for page widget.

## Getting started

- Install the package via "flutter pub get base_page".
- Import the library.
- You are ready to go.

## Usage

Create page widget on top of BasePage class: 
```dart
import 'package:base_page/base_page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends BasePage {
  const WelcomePage({
    super.key,
    required this.firstName,
    required this.lastName,
  });

  final String firstName;
  final String lastName;

  @override
  State<WelcomePage> createState() => WelcomePageState();
}

class WelcomePageState extends BasePageState<WelcomePage> {
  String name = "";

  @override
  void initState() {
    super.initState();

    name = "${widget.firstName} ${widget.lastName}";
  }

  @override
  Widget build(BuildContext context) => WelcomePageView(page: this);
}

class WelcomePageView extends BasePageView<WelcomePage, WelcomePageState> {
  const WelcomePageView({super.key, required super.page});

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        body: Text("Welcome ${page.name}"),
      );
}
```

## Additional information

This is just a small project to fulfill my own needs.
