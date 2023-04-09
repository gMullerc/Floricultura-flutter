import 'package:floricultura/components/headers/header_buttons.dart';
import 'package:floricultura/components/headers/header_text.dart';
import 'package:floricultura/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class HeaderDefault extends StatelessWidget {
  const HeaderDefault({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 50, 16, 20),
        child: Column(children: const [
          HeaderText(textHeader: "Hello Plants"),
          HeadersButtons(),
        ]),
      ),
    );
  }
}
