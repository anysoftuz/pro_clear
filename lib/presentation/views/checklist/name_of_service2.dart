import 'package:flutter/material.dart';
import 'package:pro_clear/presentation/widgets/w_scale_animation.dart';
import 'package:pro_clear/presentation/widgets/w_tabbar.dart';
import 'package:pro_clear/src/assets/colors/colors.dart';
import 'package:pro_clear/src/assets/icons.dart';
import 'package:pro_clear/src/assets/images.dart';

class NameOfService2 extends StatelessWidget {
  const NameOfService2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Наименование услуги")),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WTabBar(
                tabs: [
                  Text("По виду"),
                  Text("По состоянию"),
                ],
              ),
              const SizedBox(height: 4),
              Expanded(
                child: TabBarView(
                  children: [
                    GridView.builder(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 24,
                        crossAxisSpacing: 16,
                        mainAxisExtent: 226,
                      ),
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                          color: bgWeak50,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          children: [
                            AppImages.image6.imgAsset(),
                            const SizedBox(height: 8),
                            const Text(
                              "Одностворчатое стандартное окно",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              "46 000.00 сум",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: borderColor),
                                color: white,
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 12,
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: WScaleAnimation(
                                      onTap: () {},
                                      child: AppIcons.subtract.svg(),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      "1",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                    width: 24,
                                    child: WScaleAnimation(
                                      onTap: () {},
                                      child: AppIcons.addLine.svg(),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        const Text(
                          "Степень чистоты",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 12),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: green),
                          ),
                          child: ListTile(
                            title: const Text("Чистое"),
                            trailing: AppIcons.radioActive.svg(),
                          ),
                        ),
                        const SizedBox(height: 12),
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: borderColor),
                          ),
                          child: ListTile(
                            title: const Text("Слегка загрязненное"),
                            trailing: AppIcons.radio.svg(),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
