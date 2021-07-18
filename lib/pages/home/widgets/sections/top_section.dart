import 'package:flutter/material.dart';
import 'package:responsive/breakpoints.dart';

import '../custom_search_field.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;

      if (maxWidth >= 1200) {
        return Stack(
          children: [
            AspectRatio(
              aspectRatio: 3.2,
              child: Image.network(
                'https://startupi.com.br/wp-content/uploads/2017/03/app.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Card(
                color: Colors.black,
                elevation: 8,
                child: Container(
                  padding: EdgeInsets.all(22),
                  width: 450,
                  child: Column(
                    children: [
                      Text(
                        'Aprenda Flutter com este curso',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Donec ultricies ex a efficitur maximus. Integer sit amet vestibulum turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 16),
                      CustomSearchField(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }

      if (maxWidth >= mobileBreakpoint) {
        return SizedBox(
          height: 320,
          child: Stack(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  'https://startupi.com.br/wp-content/uploads/2017/03/app.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Container(
                    padding: EdgeInsets.all(22),
                    width: 350,
                    child: Column(
                      children: [
                        Text(
                          'Aprenda Flutter com este curso',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Donec ultricies ex a efficitur maximus. Integer sit amet vestibulum turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),
                        CustomSearchField(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      return Column(children: [
        AspectRatio(
          aspectRatio: 3.4,
          child: Image.network(
            'https://startupi.com.br/wp-content/uploads/2017/03/app.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Aprenda Flutter com este curso',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Donec ultricies ex a efficitur maximus. Integer sit amet vestibulum turpis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              CustomSearchField(),
            ],
          ),
        ),
      ]);
    });
  }
}
