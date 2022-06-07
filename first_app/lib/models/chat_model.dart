class ChatModel{
late final String name;
late final String message;
late final String time;
late final String avatar;

ChatModel({required this.name,required this.message,required this.time,required this.avatar});
}
List<ChatModel> dummy = [
    ChatModel(name: 'Sachin',message: 'Hi!',time: '15:30',avatar: 'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/03/27/966464-846984-833139-sachin-tendulkar.jpg'),
    ChatModel(name: 'Sachin',message: 'Hi!',time: '15:30',avatar: 'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/03/27/966464-846984-833139-sachin-tendulkar.jpg'),
    ChatModel(name: 'Sachin',message: 'Hi!',time: '15:30',avatar: 'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/03/27/966464-846984-833139-sachin-tendulkar.jpg'),
    ChatModel(name: 'Sachin',message: 'Hi!',time: '15:30',avatar: 'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/03/27/966464-846984-833139-sachin-tendulkar.jpg')

];
