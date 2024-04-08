import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:task_manager_app/blocs/blocs.dart';
import 'package:task_manager_app/repositories/note/note_repository.dart';
import 'package:task_manager_app/screens/add_note/add_note_screen.dart';
import 'package:task_manager_app/screens/add_note/bloc/add_note_bloc.dart';
import 'package:task_manager_app/screens/home/bloc/note_bloc.dart';
import 'package:task_manager_app/screens/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getTemporaryDirectory(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => NoteRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppThemeBloc>(
            create: (_) => AppThemeBloc(),
          ),
          BlocProvider<NoteBloc>(
            create: (context) => NoteBloc(
              noteRepository: context.read<NoteRepository>(),
            )..add(const Started()),
          ),
          BlocProvider<AddNoteBloc>(
            create: (context) => AddNoteBloc(
              noteRepository: context.read<NoteRepository>(),
              noteBloc: context.read<NoteBloc>(),
            ),
          ),
        ],
        child: BlocConsumer<AppThemeBloc, AppThemeState>(
          listener: (_, __) {},
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Note App',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              darkTheme: ThemeData.dark(),
              themeMode: state.map(
                light: (_) => ThemeMode.light,
                dark: (_) => ThemeMode.dark,
              ),
              initialRoute: HomeScreen.routeName,
              routes: {
                HomeScreen.routeName: (_) => const HomeScreen(),
                AddNoteScreen.routeName: (_) => const AddNoteScreen(),
              },
            );
          },
        ),
      ),
    );
  }
}
