import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da Conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          BoxCard(
            boxContent: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pontos totais:'),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: Text('3000',
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ContentDivision(),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text('Objetivos:', style: Theme.of(context).textTheme.titleMedium,),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: ColorDot(color: ThemeColors.accountPoints['delivery']),
                      ),
                      Text('Entrega grátis: 15000pts')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: ColorDot(color: ThemeColors.accountPoints['streaming']),
                      ),
                      Text('1 mês de streaming: 30000pts')
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
