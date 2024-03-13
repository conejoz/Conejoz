import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:conejoz/src/back_end/repositories/user_repository/user_repository.dart';

double regularSpacer = 25;

class PublicRabbitScreen extends StatefulWidget {
  final String rabbit;
  const PublicRabbitScreen({Key? key, required this.rabbit}) : super(key: key);
  @override
  _PublicRabbitScreenState createState() => _PublicRabbitScreenState();
}

class _PublicRabbitScreenState extends State<PublicRabbitScreen> {
  final _userRepo = UserRepository.instance;
  String? _username;
  String? _bio;
  String? _contactInfo;
  String? _location;
  String? _profileImage;

  @override
  void initState() {
    super.initState();
    _getRabbitData();
  }

  void _getRabbitData() async {
    final rabbitData = await _userRepo.getPublicRabbitData(widget.rabbit);
    if (rabbitData != null) {
      setState(() {
        _username = rabbitData["rabbitname"];
        _bio = rabbitData["bio"];
        _contactInfo = rabbitData["contactinfo"];
        _location = rabbitData["location"];
        _profileImage = rabbitData["profileimage"];
      });
    } else {
      print("Failed to get rabbit data for ${widget.rabbit}");
    }
  }

  @override
  Widget build(BuildContext context) {
    Get.put(UserRepository());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Public Info",
            style: TextStyle(color: Theme.of(context).colorScheme.primary)),
      ),
      body: Column(
        children: [
          SizedBox(height: regularSpacer),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(_profileImage ?? ""),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Access username from _username variable
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(_username ?? "Loading...",
                      textStyle: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary)),
                ],
              ),
              SizedBox(
                width: regularSpacer,
              )
            ],
          ),
          SizedBox(height: regularSpacer),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Bio:",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary)),
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    _bio ?? "Loading...",
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: regularSpacer),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Location:",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary)),
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    _location ?? "Loading...",
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: regularSpacer),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Contact info:",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary)),
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    _contactInfo ?? "Loading...",
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
