import 'package:app_my_money/src/shared/colors/app_colors.dart';
import 'package:flutter/material.dart';

class RegisterLink extends StatelessWidget {
  const RegisterLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.post_add, color: AppColors.logo),
        ),
        Text(
          'Faça seu cadastro no ',
          style: TextStyle(
            color: Colors.black45,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'MyMoney',
          style: TextStyle(
            color: AppColors.logo,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
