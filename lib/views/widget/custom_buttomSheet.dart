import 'package:flutter/material.dart';
import 'package:notes_app/constance.dart';

import 'custom_text_field.dart';
import 'cutom_buttom.dart';

class AddNoteBootomSheet extends StatelessWidget {
  const AddNoteBootomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              CustomTextField(
                hint: 'Title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: 'Content',
                maxLine: 5,
              ),
              SizedBox(
                height: 32,
              ),
              CustomButtom(),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
