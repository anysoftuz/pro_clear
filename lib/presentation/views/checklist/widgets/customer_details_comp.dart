import 'package:flutter/material.dart';
import 'package:pro_clear/presentation/widgets/custom_text_field.dart';
import 'package:pro_clear/src/assets/icons.dart';
import 'package:pro_clear/utils/formatters.dart';

class CustomerDetailsComp extends StatefulWidget {
  const CustomerDetailsComp({super.key});

  @override
  State<CustomerDetailsComp> createState() => _CustomerDetailsCompState();
}

class _CustomerDetailsCompState extends State<CustomerDetailsComp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        CustomTextField(
          onChanged: (value) {},
          title: "Наименование",
          hintText: "“ANYSOFT” MChJ",
          prefixIcon: AppIcons.building.svg(),
        ),
        const SizedBox(height: 12),
        CustomTextField(
          onChanged: (value) {},
          title: "№ договора",
          hintText: "37126534",
          prefixIcon: AppIcons.hashtag.svg(),
        ),
        const SizedBox(height: 12),
        CustomTextField(
          onChanged: (value) {},
          title: "Номер телефона",
          hintText: "(99) 000-00-00",
          keyboardType: TextInputType.phone,
          formatter: [Formatters.phoneFormatter],
          prefixIcon: const Text("+998"),
        ),
        const SizedBox(height: 12),
        CustomTextField(
          onChanged: (value) {},
          title: "Электронная почта",
          hintText: "Kichik halqa, 40",
          prefixIcon: AppIcons.mapPinLine.svg(),
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
        ),
        const SizedBox(height: 16),
        const Text(
          "Контактное лицо",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
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
          title: "Телефон контактного лица",
          hintText: "(99) 000-00-00",
          prefixIcon: const Text("+998"),
          keyboardType: TextInputType.phone,
          formatter: [Formatters.phoneFormatter],
        ),
      ],
    );
  }
}
