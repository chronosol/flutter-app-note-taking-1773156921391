import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/repositories/note_repository_impl.dart';
import '../domain/entities/note.dart';

class NoteController extends AsyncNotifier<List<Note>> {
  @override
  Future<List<Note>> build() async {
    return ref.read(noteRepositoryProvider).getAllNotes();
  }

  Future<void> add(Note note) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => ref.read(noteRepositoryProvider).addNote(note));
  }
}

final noteControllerProvider = AsyncNotifierProvider<NoteController, List<Note>>(NoteController.new);