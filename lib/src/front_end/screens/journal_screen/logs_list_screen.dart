import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:conejoz/src/back_end/repositories/authentication_repository/authentication_repository.dart';
import 'package:conejoz/src/back_end/repositories/user_repository/user_repository.dart';
import 'package:conejoz/src/front_end/screens/journal_screen/log_screen.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class LogsList extends StatelessWidget {
  const LogsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = AuthenticationRepository.instance.firebaseUser.value;
    if (user == null) {
      print("User is not authenticated.");
      return const Scaffold(
        body: Center(
          child: Text("Error."),
        ),
      );
    }

    final userId = user.uid;

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
          "Logs".tr,
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: UserRepository.instance.getUserEntries(userId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Error: ${snapshot.error}"),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: Text("No logs found."),
            );
          } else {
            final entries = snapshot.data!;
            return JournalManagerList(entries: entries);
          }
        },
      ),
    );
  }
}

class JournalManagerList extends StatefulWidget {
  final List<Map<String, dynamic>> entries;

  const JournalManagerList({Key? key, required this.entries}) : super(key: key);

  @override
  _JournalManagerListState createState() => _JournalManagerListState();
}

class _JournalManagerListState extends State<JournalManagerList> {
  late List<Map<String, dynamic>> _entries;

  @override
  void initState() {
    super.initState();
    _entries = widget.entries;
  }

  Future<void> _deleteEntry(int index) async {
    final success = await UserRepository.instance
        .deleteUserEntry(_entries[index]['uniqueid']);

    if (success) {
      setState(() {
        _entries.removeAt(index);
      });
    } else {
      // Handle deletion failure
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _entries.length,
      itemBuilder: (context, index) {
        final entry = _entries[index];
        return ListTile(
          title: Text(
            entry['title'] ?? '',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          subtitle: Text(
            entry['tags']?.join(', ') ?? '',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
          trailing: Text(
            DateFormat('dd-MM-yy HH:mm:ss')
                .format(entry['timestamp']?.toDate() ?? DateTime.now()),
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LogScreen(entry: entry),
              ),
            );
          },
          onLongPress: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Delete Entry"),
                  content: Text("Do you want to delete this entry?"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () async {
                        await _deleteEntry(index);
                        Navigator.of(context).pop();
                      },
                      child: Text("Delete"),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}
