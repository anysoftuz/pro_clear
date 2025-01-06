import 'package:flutter/material.dart';
import 'package:pro_clear/presentation/widgets/w_button.dart';
import 'package:pro_clear/src/assets/colors/colors.dart';
import 'package:pro_clear/src/assets/icons.dart';
import 'package:pro_clear/src/assets/images.dart';

class CommercialOfferView extends StatefulWidget {
  const CommercialOfferView({super.key});

  @override
  State<CommercialOfferView> createState() => _CommercialOfferViewState();
}

class _CommercialOfferViewState extends State<CommercialOfferView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: WButton(
                  onTap: () {
                    Navigator.of(context)
                      ..pop()
                      ..pop()
                      ..pop();
                  },
                  color: white,
                  border: Border.all(color: green),
                  textColor: green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppIcons.share.svg(),
                      const SizedBox(width: 8),
                      const Text("Поделиться"),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: WButton(
                  onTap: () {
                    Navigator.of(context)
                      ..pop()
                      ..pop()
                      ..pop();
                  },
                  text: "Продолжить",
                ),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                height: 96,
                width: 96,
                child: AppImages.succes.imgAsset(),
              ),
              const SizedBox(height: 20),
              const Text(
                "Успешный",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Поздравляем, вы заключили новый контракт.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF717784),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: bgWeak50,
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: Text(
                        "ФИО",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF717784),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Rasulova Dilnoza",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: bgWeak50,
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Адрес",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF717784),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Кичик ҳалқа, 40",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: bgWeak50,
                ),
                child: const Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        "Номер телефона",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF717784),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        "+998 (99) 000-00-00",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 6),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: bgWeak50,
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Сумма получаемая от клиента",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF717784),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "1 258 056.00 сум",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: borderColor),
                ),
                child: ListTile(
                  minVerticalPadding: 0,
                  leading: AppIcons.fileFormat.svg(),
                  title: const Text("Коммерческое предложение"),
                  subtitle: const Text("2.3 MB"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
