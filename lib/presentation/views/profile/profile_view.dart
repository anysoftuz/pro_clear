import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_clear/presentation/widgets/w_shimmer.dart';
import 'package:pro_clear/src/assets/images.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 12),
              CircleAvatar(
                radius: 56,
                backgroundImage: AssetImage(AppImages.avatar),
              ),
              SizedBox(height: 12),
              Text(
                "Ислом Аҳмедов",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Администратор",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 28),
              Divider(),
              CupertinoListTile(
                padding: EdgeInsets.zero,
                trailing: WShimmer(
                  height: 24,
                  width: 24,
                ),
                title: WShimmer(
                  height: 24,
                  width: 160,
                ),
              ),
              Divider(),
              CupertinoListTile(
                padding: EdgeInsets.zero,
                trailing: WShimmer(
                  height: 24,
                  width: 24,
                ),
                title: WShimmer(
                  height: 24,
                  width: 160,
                ),
              ),
              Divider(),
              CupertinoListTile(
                padding: EdgeInsets.zero,
                trailing: WShimmer(
                  height: 24,
                  width: 24,
                ),
                title: WShimmer(
                  height: 24,
                  width: 160,
                ),
              ),
              Divider(),
              CupertinoListTile(
                padding: EdgeInsets.zero,
                trailing: WShimmer(
                  height: 24,
                  width: 24,
                ),
                title: WShimmer(
                  height: 24,
                  width: 160,
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
