import 'package:flutter/material.dart';
import 'package:pro_clear/presentation/views/checklist/Type_of_premises.dart';
import 'package:pro_clear/presentation/views/checklist/check_list_view.dart';
import 'package:pro_clear/presentation/views/checklist/consumables_view.dart';
import 'package:pro_clear/presentation/views/checklist/name_of_service.dart';
import 'package:pro_clear/presentation/views/checklist/widgets/customer_details_comp.dart';
import 'package:pro_clear/presentation/views/checklist/widgets/customer_details_user.dart';
import 'package:pro_clear/presentation/widgets/custom_text_field.dart';
import 'package:pro_clear/presentation/widgets/info_title_iteam.dart';
import 'package:pro_clear/presentation/widgets/w_button.dart';
import 'package:pro_clear/src/assets/colors/colors.dart';
import 'package:pro_clear/src/assets/icons.dart';
import 'package:pro_clear/src/assets/images.dart';

class CheckListCreateView extends StatefulWidget {
  const CheckListCreateView({super.key, required this.index});
  final int index;

  @override
  State<CheckListCreateView> createState() => _CheckListCreateViewState();
}

class _CheckListCreateViewState extends State<CheckListCreateView> {
  late ValueNotifier<int> selIndex;
  late ValueNotifier<int> pageIndex;
  late PageController controller;
  // ValueNotifier<InfoClearEnum> screnValue = ValueNotifier(InfoClearEnum.main);
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    selIndex = ValueNotifier(widget.index);
    pageIndex = ValueNotifier(0);
    controller = PageController();
    super.initState();
  }

  Color getIndexColor(int index, int activePage) {
    if (index == activePage) {
      return blue;
    }
    if (index < activePage) {
      return green;
    } else {
      return borderColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        leading: const SizedBox(),
        leadingWidth: 0,
        title: const Text(
          "Чек лист заказа",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: textStrong950,
          ),
        ),
        actions: [
          WButton(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  insetPadding: const EdgeInsets.all(16),
                  contentPadding: EdgeInsets.zero,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  backgroundColor: white,
                  content: SizedBox(
                    width: 800,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xFFFFEBEC),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: AppIcons.delete.svg(),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                "Отменить процесс",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 4),
                              const Text(
                                "Вы действительно хотите отменить процесс Чек лист",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: textSub600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(height: 1),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 16,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: WButton(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  color: white,
                                  border: Border.all(color: borderColor),
                                  text: "Нет, назад",
                                  textColor: textSub600,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: WButton(
                                  onTap: () {
                                    Navigator.of(context)
                                      ..pop()
                                      ..pop();
                                  },
                                  color: red,
                                  text: "Да, отменить",
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            height: 32,
            width: 32,
            borderRadius: 8,
            color: const Color(0xFFFFEBEC),
            child: AppIcons.close.svg(),
          ),
          const SizedBox(width: 16),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: WButton(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ConsumablesView(),
            ));
          },
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          text: "Продолжить",
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InfoTitleIteam(text: 'Данные клиента'),
            const Text(
              "Тип клиента",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            ValueListenableBuilder(
              valueListenable: selIndex,
              builder: (context, value, __) {
                return Column(
                  children: [
                    CheckListIteam(
                      index: 0,
                      selIndex: value,
                      onTap: (index) {
                        selIndex.value = index;
                      },
                      icon: AppIcons.user.svg(),
                      title: "Физическое лицо",
                      subTitle:
                          "Гражданин, не обладающий статусом юридического лица.",
                    ),
                    const SizedBox(height: 12),
                    CheckListIteam(
                      index: 1,
                      selIndex: value,
                      onTap: (index) {
                        selIndex.value = index;
                      },
                      icon: AppIcons.building.svg(),
                      title: "Корпоративные",
                      subTitle:
                          "Юридическое лицо, такое как компания или организация",
                    ),
                  ],
                );
              },
            ),
            ValueListenableBuilder(
              valueListenable: selIndex,
              builder: (context, value, __) {
                if (value == 0) {
                  return const CustomerDetailsUser();
                } else {
                  return const CustomerDetailsComp();
                }
              },
            ),
            const InfoTitleIteam(text: 'Услуги'),
            const SizedBox(height: 12),
            CustomTextField(
              title: "Выберите вид помещения",
              hintText: "Выбрать",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TypeOfPremises(),
                ));
              },
              suffixIcon: AppIcons.arrowdown.svg(),
              prefixIcon: AppIcons.building2.svg(),
            ),
            const SizedBox(height: 8),
            const SelInfoIteam(title: "Коттедж"),
            const SizedBox(height: 8),
            const SelInfoIteam(title: "Офис"),
            const SizedBox(height: 12),
            CustomTextField(
              title: "Введите площадь помещения",
              hintText: "кв. м.",
              keyboardType: TextInputType.number,
              prefixIcon: AppIcons.artboard.svg(),
            ),
            const SizedBox(height: 12),
            CustomTextField(
              title: "Наименование услуги",
              hintText: "Добавить услуги...",
              suffixIcon: AppIcons.arrowdown.svg(),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const NameOfService(),
                ));
              },
              prefixIcon: AppIcons.toolsLine.svg(),
            ),
            const SizedBox(height: 8),
            const SelInfoIteam(title: "Химчистка ковров"),
            const SizedBox(height: 8),
            const SelInfoIteam(title: "Химчистка ковровых покрытий"),
            const SizedBox(height: 8),
            const SelInfoIteam(title: "После строительная уборка"),
            const SizedBox(height: 12),
            CustomTextField(
              title: "Цена услуги",
              hintText: "460 000.00 сум",
              enabled: false,
              hintTextColor: textStrong950,
              fillColor: bgWeak50,
              prefixIcon: AppIcons.currency.svg(),
            ),
            const SizedBox(height: 12),
            const InfoTitleIteam(text: 'Расходные материалы'),
            const SizedBox(height: 12),
            CustomTextField(
              title: "Название инвентаря",
              hintText: "Добавить инвентарь...",
              prefixIcon: AppIcons.toolsLine.svg(),
            ),
            const SizedBox(height: 8),
            const SelInfoIteam(title: "Пудра"),
            const SizedBox(height: 8),
            const SelInfoIteam(title: "Чистящая лопата"),
            const SizedBox(height: 8),
            const SelInfoIteam(title: "Пылесос"),
            const SizedBox(height: 12),
            CustomTextField(
              title: "Суммы расходного инвентаря",
              hintText: "258 056.00 сум",
              enabled: false,
              hintTextColor: textStrong950,
              fillColor: bgWeak50,
              prefixIcon: AppIcons.currency.svg(),
            ),
            const SizedBox(height: 12),
            const InfoTitleIteam(text: 'Оплата сотрудника'),
            const SizedBox(height: 12),
            CustomTextField(
              title: "Оплата сотрудника",
              hintText: "150 000.00 сум",
              prefixIcon: AppIcons.currency.svg(color: const Color(0xFF99A0AE)),
            ),
            const SizedBox(height: 12),
            CustomTextField(
              title: "Сумма получаемая от клиента",
              hintText: "1 258 056.00 сум",
              prefixIcon: AppIcons.handCoin.svg(),
            ),
            const SizedBox(height: 12),
            CustomTextField(
              title: "Отображение суммы рентабельности",
              hintText: "458 056.00 сум",
              prefixIcon: AppImages.emoji.imgAsset(),
            ),
          ],
        ),
      ),
    );
  }
}

class SelInfoIteam extends StatelessWidget {
  const SelInfoIteam({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: green),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      child: Row(
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                text: title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: green,
                ),
                children: const [
                  TextSpan(
                    text: "(70 0000 сум)",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: textSoft400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          AppIcons.close.svg(color: green),
        ],
      ),
    );
  }
}
