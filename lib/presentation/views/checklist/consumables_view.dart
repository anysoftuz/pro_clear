import 'package:flutter/material.dart';
import 'package:pro_clear/presentation/views/checklist/commercial_offer_view.dart';
import 'package:pro_clear/presentation/widgets/w_button.dart';
import 'package:pro_clear/presentation/widgets/w_title.dart';
import 'package:pro_clear/src/assets/colors/colors.dart';
import 'package:pro_clear/src/assets/icons.dart';

class ConsumablesView extends StatefulWidget {
  const ConsumablesView({super.key});

  @override
  State<ConsumablesView> createState() => _ConsumablesViewState();
}

class _ConsumablesViewState extends State<ConsumablesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Чек лист Подробности")),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: WButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  color: white,
                  border: Border.all(color: green),
                  textColor: green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppIcons.arrowLeft.svg(),
                      const SizedBox(width: 4),
                      const Text("Назад")
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                flex: 2,
                child: WButton(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CommercialOfferView(),
                    ));
                  },
                  text: "Продолжить",
                ),
              ),
            ],
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WTitile(title: "Данные клиента"),
            WListTileInfo(
              title: "Тип клиента",
              subTitle: "Физическое лицо",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(height: 1),
            ),
            WListTileInfo(
              title: "ФИО",
              subTitle: "Rasulova Dilnoza",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(height: 1),
            ),
            WListTileInfo(
              title: "Адрес",
              subTitle: "Кичик ҳалқа, 40",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(height: 1),
            ),
            WListTileInfo(
              title: "Номер телефона",
              subTitle: "+998 (99) 000-00-00",
            ),
            WTitile(title: "Услуги"),
            WListTileInfo(
              title: "Выберите вид помещения",
              subTitle: "Квартира",
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(height: 1),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Наименование услуги",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: textSoft400,
                    ),
                  ),
                  SizedBox(height: 8),
                  WInfoText(
                    title: "Мытье окон ",
                    subtitle: "(70 0000 сум)",
                  ),
                  SizedBox(height: 8),
                  WInfoText(
                    title: "Химчистка мебели ",
                    subtitle: "(128 056.00 сум)",
                  ),
                  SizedBox(height: 8),
                  WInfoText(
                    title: "Душевая кабина/Джакузи ",
                    subtitle: "(68 056.00 сум)",
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(height: 1),
            ),
            WListTileInfo(
              title: "Цена услуги",
              subTitle: "460 000.00 сум",
            ),
            WTitile(title: "Расходные материалы"),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Название инвентаря",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: textSoft400,
                    ),
                  ),
                  SizedBox(height: 8),
                  WInfoText(
                    title: "Пудра",
                    subtitle: " (258 056.00 сум)",
                  ),
                  SizedBox(height: 8),
                  WInfoText(
                    title: "Чистящая лопата",
                    subtitle: " 258 056.00 сум",
                  ),
                  SizedBox(height: 8),
                  WInfoText(
                    title: "Плисос",
                    subtitle: " 258 056.00 сум",
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(height: 1),
            ),
            WListTileInfo(
              title: "Суммы расходного инвентаря",
              subTitle: "258 056.00 сум",
            ),
            WTitile(title: "Оплата сотрудника"),
            WListTileInfo(
              title: "Оплата сотрудника",
              subTitle: "150 0000 сум",
            ),
            WTitile(title: "рентабельности"),
            WListTileInfo(
              title: "Сумма получаемая от клиента",
              subTitle: "1 258 056.00 сум",
              subTitleSize: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(height: 1),
            ),
            WListTileInfo(
              title: "Отображение суммы рентабельности",
              subTitle: "458 056.00 сум",
              subTitleSize: 24,
              subTitleColor: green,
            ),
          ],
        ),
      ),
    );
  }
}

class WInfoText extends StatelessWidget {
  const WInfoText({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: bgWeak50,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      width: double.infinity,
      child: RichText(
        text: TextSpan(
          text: title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: textSub600,
          ),
          children: [
            TextSpan(
              text: subtitle,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: textSoft400,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class WListTileInfo extends StatelessWidget {
  const WListTileInfo({
    super.key,
    required this.title,
    required this.subTitle,
    this.subTitleSize,
    this.subTitleColor,
  });
  final String title;
  final String subTitle;
  final double? subTitleSize;
  final Color? subTitleColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      titleTextStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: textSoft400,
      ),
      subtitleTextStyle: TextStyle(
        fontSize: subTitleSize ?? 16,
        fontWeight: FontWeight.w500,
        color: subTitleColor ?? textStrong950,
      ),
    );
  }
}
