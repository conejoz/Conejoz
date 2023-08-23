import 'package:conejoz/src/constants/conejoz_logos.dart';
import 'package:conejoz/src/features/journal/screens/entry_editor.dart';
import 'package:conejoz/src/features/journal/screens/entry_publisher.dart';
import 'package:conejoz/src/features/journal/screens/image_picker.dart';
import 'package:conejoz/src/features/journal/screens/read_entry_screen.dart';
import 'package:conejoz/src/features/journal/screens/voice_note_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EntryDashboard extends StatefulWidget {
  final Map<String, dynamic> entry;

  const EntryDashboard({
    Key? key,
    required this.entry,
  }) : super(key: key);

  @override
  State<EntryDashboard> createState() => _EntryDashboardState();
}

class _EntryDashboardState extends State<EntryDashboard> {
  // Index of the current screen
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    DateTime entryDate = widget.entry['timestamp']?.toDate();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: IconButton(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          DateFormat('yy-MM-dd HH:mm:ss').format(entryDate),
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          ImagePicker(),
          VoiceNoteScreen(),
          ReadEntryScreen(
            entry: widget.entry,
          ),
          EntryEditor(
            entry: widget.entry,
          ),
          EntryPublisher()
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(
                Icons.image,
                color: _currentIndex == 0
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onSurfaceVariant,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.mic,
                color: _currentIndex == 1
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onSurfaceVariant,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.visibility,
                color: _currentIndex == 2
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onSurfaceVariant,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.edit_note,
                color: _currentIndex == 3
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.onSurfaceVariant,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
            IconButton(
              icon: const Icon(
                ConejozLogos.conejozBlackFill,
              ),
              onPressed: () {
                print("debugShare");
              },
            ),
          ],
        ),
      ),
    );
  }
}