import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildAdvantages(String title, String subtitle) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(subtitle, style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      );
    }

    return Container(
      padding: EdgeInsets.fromLTRB(16, 10, 16, 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        runSpacing: 20,
        spacing: 10,
        children: [
          buildAdvantages('+45 mil alunos', 'Média de 4.8 estrelas!'),
          buildAdvantages(
              'Metodologia comprovada', '99% de aprovação dos alunos'),
          buildAdvantages(
              'Aulas bônus toda semana', 'Curso constantemente atualizado')
        ],
      ),
    );
  }
}
