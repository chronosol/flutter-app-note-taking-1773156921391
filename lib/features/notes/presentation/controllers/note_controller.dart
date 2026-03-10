import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note_taking/features/notes/domain/repositories/note_repository.dart';
import 'package:note_taking/features/notes/domain/entities/note.dart';

class NoteController extends AsyncNotifier<List<Note>> {
  @override
  Future<List<Note>> build() async {
    return ref.read(noteRepositoryProvider).getAll();
  }
}

final noteControllerProvider = AsyncNotifierProvider<NoteController, List<Note>>(NoteController.new);