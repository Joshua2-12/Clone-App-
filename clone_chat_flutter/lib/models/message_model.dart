import 'package:clone_chat_flutter/models/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'asset/images/Bill.jpg',
);

// USERS
final User dion = User(
  id: 1,
  name: 'Dion',
  imageUrl: 'asset/images/Dion.jpg',
);
final User sarah = User(
  id: 2,
  name: 'Sarah',
  imageUrl: 'asset/images/Sarah.jpg',
);
final User irene = User(
  id: 3,
  name: 'Irene',
  imageUrl: 'asset/images/Irene.jpg',
);
final User jeff = User(
  id: 4,
  name: 'Jeff',
  imageUrl: 'asset/images/Jeff.jpg',
);
final User jessica = User(
  id: 5,
  name: 'Jessica',
  imageUrl: 'asset/images/Jessica.jpg',
);
final User mclean = User(
  id: 6,
  name: 'Mclean',
  imageUrl: 'asset/images/Mclean.jpg',
);
final User michael = User(
  id: 7,
  name: 'Michael',
  imageUrl: 'asset/images/Michael.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [sarah, mclean, jeff, jessica, michael];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: sarah,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: jeff,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: mclean,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: michael,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: irene,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: jessica,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: dion,
    time: '11:30 AM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: dion,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: dion,
    time: '3:45 PM',
    text: 'How\'s the doggo?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: dion,
    time: '3:15 PM',
    text: 'All the food',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: dion,
    time: '2:00 PM',
    text: 'I ate so much food today.',
    isLiked: false,
    unread: true,
  ),
];
