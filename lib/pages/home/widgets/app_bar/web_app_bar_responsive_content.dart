import 'package:flutter/material.dart';

class WebAppBarResponsiveContet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey.shade600),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 4),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey[500],
                        )),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquisa alguma coisa aqui...',
                            isCollapsed: true),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (constraints.maxWidth >= 400) ...[
              SizedBox(width: 32),
              OutlinedButton(
                onPressed: () {},
                child: Text('Aprender'),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
            ],
            if (constraints.maxWidth >= 500) ...[
              SizedBox(width: 32),
              OutlinedButton(
                onPressed: () {},
                child: Text('Flutter'),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
              ),
              SizedBox(width: 16),
            ],
          ],
        );
      }),
    );
  }
}
