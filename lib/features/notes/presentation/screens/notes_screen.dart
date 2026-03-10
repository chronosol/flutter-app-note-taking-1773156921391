import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note_taking/features/notes/presentation/controllers/note_controller.dart';
import 'package:note_taking/features/notes/presentation/widgets/note_card.dart';

class NotesScreen extends ConsumerWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notesAsync = ref.watch(noteControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Notes')), 
      body: notesAsync.when(
        data: (notes) => ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) => NoteCard(note: notes[index]),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')), 
      ),
    );
  }
}