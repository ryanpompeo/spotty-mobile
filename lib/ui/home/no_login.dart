import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:map_food/ui/widgets/app_background.dart';

class NoLogin extends StatelessWidget {
  const NoLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBackground(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            elevation: 0,
            title: Padding(
              padding: EdgeInsetsGeometry.only(top: 32, bottom: 16),
              child: Icon(
                LucideIcons.mapPin,
                size: 40,
                color: Colors.black.withOpacity(0.90),
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  top: 16,
                  bottom: 16,
                  right: 16,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(LucideIcons.settings, size: 25),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  color: Colors.black.withOpacity(0.90),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: SafeArea(
              child: Column(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'O que deseja comer hoje?',
                      style: TextStyle(
                        fontSize: 25, // tamanho base
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
