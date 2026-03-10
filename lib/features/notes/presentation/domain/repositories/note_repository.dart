abstract class NoteRepository {
  Future<List<Note>> getAllNotes();
  Future<void> addNote(Note note);
}