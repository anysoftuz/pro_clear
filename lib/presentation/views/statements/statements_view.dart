import 'package:flutter/material.dart';
import 'package:pro_clear/presentation/views/statements/widgets/statement_iteam.dart';

class StatementsView extends StatefulWidget {
  const StatementsView({super.key});

  @override
  State<StatementsView> createState() => _StatementsViewState();
}

class _StatementsViewState extends State<StatementsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Заявления")),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) => StatementItem(isActive: index > 4),
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemCount: 12,
      ),
    );
  }
}
