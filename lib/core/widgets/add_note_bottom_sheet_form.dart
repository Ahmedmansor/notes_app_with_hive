import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app_with_hive/colors.dart';
import 'package:notes_app_with_hive/core/widgets/custom_text_field.dart';
import 'package:notes_app_with_hive/cubits/add_note_cubit.dart/cubit/add_note_cubit.dart';
import '../utils/app_settings.dart';
import 'custom_button.dart';

class AddNoteBottomSheetForm extends StatelessWidget {
  const AddNoteBottomSheetForm({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    var addnoteCubit = AddNoteCubit.get(context);

    return Form(
      key: addnoteCubit.formKey,
      autovalidateMode: addnoteCubit.autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 36,
          ),
          CustomTextField(
            title: 'title',
            onSaved: (value) {
              addnoteCubit.title = value;
            },
            validator: (p0) {
              if (p0?.isEmpty ?? true) {
                return 'Please enter title';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            title: 'content',
            maxLines: 5,
            onSaved: (p0) {
              addnoteCubit.content = p0;
            },
            validator: (p0) {
              if (p0?.isEmpty ?? true) {
                return 'Please enter content';
              }
              return null;
            },
          ),
          SizedBox(
            height: AppSettings.height * 0.02,
          ),
          const ListtViewColors(),
          SizedBox(
            height: AppSettings.height * 0.02,
          ),
          SizedBox(
            width: AppSettings.width,
            child: BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  backgroundColor: ColorsApp.kPrimaryColor,
                  onPressed: () {
                    addnoteCubit.validate();
                  },
                  text: 'Add',
                  textColor: Colors.black,
                  isLoading: state is AddNoteLoading,
                );
              },
            ),
          ),
          SizedBox(
            height: AppSettings.height * 0.02,
          ),
        ],
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.isSelected,
    required this.color,
  });
  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 28,
            ))
        : CircleAvatar(
            backgroundColor: color,
            radius: 30,
          );
  }
}

class ListtViewColors extends StatefulWidget {
  const ListtViewColors({super.key});

  @override
  State<ListtViewColors> createState() => _ListtViewColorsState();
}

class _ListtViewColorsState extends State<ListtViewColors> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffd8d0c1),
    Color(0xffE0D3DE),
    Color(0xffFCBB8A),
    Color(0xffB3B492),
    Color(0xff52B788),
    Color(0xff6B7F82),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              AddNoteCubit.get(context).color = colors[index];
              setState(() {});
            },
            child: ColorItem(
              isSelected: currentIndex == index,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
