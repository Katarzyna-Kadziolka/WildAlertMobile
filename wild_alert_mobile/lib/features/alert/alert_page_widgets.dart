import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wild_alert_mobile/features/alert/bloc/alert_blocs.dart';
import 'package:wild_alert_mobile/features/alert/bloc/alert_events.dart';

import '../../common/entities/Animal.dart';
import '../../common/values/colors.dart';

Widget _radioRow(BuildContext context, Animal animal, String translation) {
  return Row(
    children: [
      Text(translation),
      Radio<Animal>(
        value: Animal.boar,
        groupValue: context.read<AlertBlocs>().state.animal,
        onChanged: (Animal? value) {
          context.read<AlertBlocs>().add(AnimalEvent(value ?? Animal.boar));
        },
        fillColor: MaterialStateColor.resolveWith((states) => AppColors.primaryElement),
      )
    ],
  );
}

var animalTranslation = <Animal, String>{
  Animal.boar: "Dzik",
  Animal.fox: "Lis",
  Animal.deer: "Jeleń",
  Animal.other: "Inne"
};
Widget animalSelection(BuildContext context) {

  return Row(
    children: [
      Row(
        children: [
          ...List.generate(animalTranslation.length, (index) =>
              _radioRow(context, animalTranslation.keys.elementAt(index), animalTranslation.values.elementAt(index))
          )
        ],
      ),
    ],
  );
}