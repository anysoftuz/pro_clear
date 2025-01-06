import 'package:flutter/material.dart';
import 'package:pro_clear/presentation/widgets/custom_text_field.dart';
import 'package:pro_clear/src/assets/icons.dart';
import 'package:pro_clear/utils/formatters.dart';

class CustomerDetailsUser extends StatefulWidget {
  const CustomerDetailsUser({super.key});

  @override
  State<CustomerDetailsUser> createState() => _CustomerDetailsUserState();
}

class _CustomerDetailsUserState extends State<CustomerDetailsUser> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        CustomTextField(
          onChanged: (value) {},
          title: "Заказ",
          hintText: "37126534",
          prefixIcon: AppIcons.hashtag.svg(),
        ),
        const SizedBox(height: 12),
        CustomTextField(
          onChanged: (value) {},
          title: "ФИО",
          hintText: "Rasulova Dilnoza",
          prefixIcon: AppIcons.userLine.svg(),
        ),
        const SizedBox(height: 12),
        CustomTextField(
          onChanged: (value) {},
          title: "Телефон клиента",
          hintText: "(99) 000-00-00",
          prefixIcon: const Text("+998"),
          keyboardType: TextInputType.phone,
          formatter: [Formatters.phoneFormatter],
        ),
        const SizedBox(height: 12),
        CustomTextField(
          onChanged: (value) {},
          title: "Область",
          hintText: "Тошлент",
          prefixIcon: AppIcons.mapPinLine.svg(),
        ),
        const SizedBox(height: 12),
        CustomTextField(
          onChanged: (value) {},
          title: "Район",
          hintText: "Юнусабадский",
          prefixIcon: AppIcons.mapPinLine.svg(),
        ),
        const SizedBox(height: 12),
        CustomTextField(
          onChanged: (value) {},
          title: "Улица",
          hintText: "Юнусабадский",
          prefixIcon: AppIcons.mapPinLine.svg(),
        ),
        const SizedBox(height: 12),
        CustomTextField(
          onChanged: (value) {},
          title: "Адрес",
          hintText: "Kichik halqa, 40",
          prefixIcon: AppIcons.mapPinLine.svg(),
        )
      ],
    );
  }
}
