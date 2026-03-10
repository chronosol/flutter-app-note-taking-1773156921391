import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:note_taking/features/notes/presentation/screens/notes_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const NotesScreen(),
      ),
    ],
  );
}