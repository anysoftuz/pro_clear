import 'package:flutter/material.dart';
import 'package:pro_clear/presentation/widgets/w_button.dart';
import 'package:pro_clear/src/assets/colors/colors.dart';

class StatementsInfoView extends StatefulWidget {
  const StatementsInfoView({super.key});

  @override
  State<StatementsInfoView> createState() => _StatementsInfoViewState();
}

class _StatementsInfoViewState extends State<StatementsInfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Заявление № 124 ")),
      bottomNavigationBar: SafeArea(
        child: WButton(
          onTap: () {},
          margin: const EdgeInsets.all(16),
          text: 'Чек лист',
        ),
      ),
      body: SingleChildScrollView(
        child: Theme(
          data: Theme.of(context).copyWith(
            listTileTheme: const ListTileThemeData(
              titleTextStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF99A0AE),
              ),
              subtitleTextStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: dark,
              ),
            ),
          ),
          child: const Column(
            children: [
              ListTile(
                title: Text('Тип клиента'),
                subtitle: Text('Физическое лицо'),
              ),
              ListTile(
                title: Text('ФИО'),
                subtitle: Text('Турсунов Азим'),
              ),
              ListTile(
                title: Text('Телефон клиента'),
                subtitle: Text('+998 91 256 98 12'),
              ),
              ListTile(
                title: Text('Область'),
                subtitle: Text('Ферғана'),
              ),
              ListTile(
                title: Text('Район'),
                subtitle: Text('Қува'),
              ),
              ListTile(
                title: Text('Улица'),
                subtitle: Text('ул. Гулшан'),
              ),
              ListTile(
                title: Text('Адрес'),
                subtitle: Text('дом 23'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
              ),
              ListTile(
                title: Text('Комментарий к заявлению'),
                subtitle: Text('–'),
              ),
              ListTile(
                title: Text('Время выполнения'),
                subtitle: Text('дд/мм/гг'),
              ),
              ListTile(
                title: Text('Скидка'),
                subtitle: Text('0.0% (0.00 сум)'),
              ),
              ListTile(
                title: Text('Назначено'),
                subtitle: Text('–'),
              ),
              ListTile(
                title: Text('Заметки для сотрудника'),
                subtitle: Text('–'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
