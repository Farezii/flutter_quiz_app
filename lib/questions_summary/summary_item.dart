import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionNumberCircle(itemData),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemData['user_answer'] as String,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 241, 138, 220),
                ),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 102, 243, 198),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
