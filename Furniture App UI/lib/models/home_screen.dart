import 'package:flutter/material.dart';
import 'package:furniture/models/widgets/popular_widget_furniture.dart';
import 'package:furniture/models/widgets/promotion_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: MediaQuery.of(context).padding,
        child: Column(
          children: const [
            PromotionWidget(),
            PopularFurnitureWidget(),
          ],
        ),
      ),
    );
  }
}