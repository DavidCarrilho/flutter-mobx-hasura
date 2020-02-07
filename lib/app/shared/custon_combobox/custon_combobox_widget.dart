import 'package:find_dropdown/find_dropdown.dart';
import 'package:flutter/material.dart';

class CustonComboboxWidget extends StatelessWidget {
  final List<> items;
  @override
  Widget build(BuildContext context) {
    return FindDropdown(
      items: ["Brasil",],
      label: "Mais",
      onChanged: (String item) => print(item),
      
    );
  }
}
