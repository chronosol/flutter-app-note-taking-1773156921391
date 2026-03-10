import 'package:note_taking/features/notes/domain/repositories/note_repository.dart';
import 'package:note_taking/features/notes/domain/entities/note.dart';

class NoteRepositoryImpl implements NoteRepository {
  @override
  Future<List<Note>> getAll() async {
    // Implementation here
    return [];
  }
}