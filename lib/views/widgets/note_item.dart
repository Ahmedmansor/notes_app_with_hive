import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 24,
      ),
      decoration: BoxDecoration(
          color: const Color(0xffffcc80),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: const Text(
                'Flutter tips ',
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                'Build your Career with Tharwat Samy',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.4), fontSize: 20),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              '21,2022 May',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.4), fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
