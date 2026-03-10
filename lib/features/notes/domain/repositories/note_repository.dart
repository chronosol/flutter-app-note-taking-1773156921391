abstract class NoteRepository {
  Future<void> addNote(Note note);
  Future<void> deleteNote(String id);
  Future<List<Note>> getAllNotes();
  Future<void> updateNote(Note note);
}