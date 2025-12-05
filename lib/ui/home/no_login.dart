import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:map_food/core/theme/colors_palette.dart';
import 'package:map_food/ui/widgets/chat_input.dart';
import 'package:map_food/ui/widgets/food_category_carousel.dart';

class NoLogin extends StatelessWidget {
  NoLogin({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsPalette.branco,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Row(
          children: [
            Icon(
              LucideIcons.mapPin,
              size: 28,
              color: ColorsPalette.roxoVivo.withOpacity(0.95),
            ),
            const SizedBox(width: 8),
            Text(
              "Limeira - SP",
              style: TextStyle(
                color: ColorsPalette.cinzaBg.withOpacity(0.75),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {},
              icon: Icon(LucideIcons.settings, size: 22),
              color: Colors.black.withOpacity(0.75),
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          children: [
            ChatInput(controller: controller, onSend: () {}),

            const SizedBox(height: 28),

            Text(
              'Em Destaque',
              style: TextStyle(
                color: ColorsPalette.cinzaBg.withOpacity(0.85),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 14),

            SizedBox(height: 80, child: FoodCategoryCarousel()),

            const SizedBox(height: 40),

            // Exemplo extra pra preencher a tela
            Text(
              'Recomendações para você',
              style: TextStyle(
                color: ColorsPalette.cinzaBg.withOpacity(0.85),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            buildFakeCard(),
            buildFakeCard(),
            buildFakeCard(),

            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget buildFakeCard() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.55),
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
    );
  }
}
