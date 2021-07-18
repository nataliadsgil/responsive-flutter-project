import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://i.ytimg.com/vi/fq4N0hgOWzU/maxresdefault.jpg',
          fit: BoxFit.fitWidth,
        ),
        SizedBox(height: 4),
        Flexible(
          child: AutoSizeText(
            'Curso completo para criação de aplicativos responsivos em Flutter',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          'Author Name',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        Text(
          'R\$ 99.99',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
