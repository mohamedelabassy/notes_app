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
      child: const Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: AddNoteFormState(),
        ),
      ),
    );
  }
}

class AddNoteFormState extends StatefulWidget {
  const AddNoteFormState({
    super.key,
  });

  @override
  State<AddNoteFormState> createState() => _AddNoteFormStateState();
}

@override
class _AddNoteFormStateState extends State<AddNoteFormState> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxLine: 5,
          ),
          SizedBox(
            height: 32,
          ),
          CustomButtom(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
