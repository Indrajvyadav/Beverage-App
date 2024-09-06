import 'package:beverage_app/models/list_models.dart';
import 'package:beverage_app/screens/item_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ItemScreen extends ConsumerStatefulWidget {
  final int index;

  const ItemScreen(this.index, {super.key});

  @override
  ConsumerState<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends ConsumerState<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                height: size.height / (2.5),
                width: size.width,
                child: Image.asset(
                  listModels[widget.index].imagePath,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 225,
          child: ItemDetailWidget(
            index: widget.index,
          ),
        ),
      ]),
    );
  }
}
