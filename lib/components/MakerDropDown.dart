import 'package:flutter/material.dart';
import 'package:makers_wallet/themes/ColorsMakers.dart';

class MakerDropDown extends StatelessWidget {

  final int? value;
  final List<DropdownMenuItem<int>> items;
  final Function(int?) onChange;
  final String? labelText;
  final String? hintText;
  final Widget? icon;

  const MakerDropDown({Key? key, required this.value,
    required this.items,
    required this.onChange,
    this.labelText,
    this.hintText, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: value,
      items: items,
      onChanged: (e) {
        onChange(e);
      },
      icon: const Icon(Icons.keyboard_arrow_down),
      iconEnabledColor: ColorsMakers.darkPrimary,
      decoration:  InputDecoration(
          labelText: labelText ?? "labelText",
          hintText: hintText ?? "hintText",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: const TextStyle(fontSize: 18),
          prefixIcon: icon ?? const Icon(Icons.account_balance)
      ),
    );
  }
}
