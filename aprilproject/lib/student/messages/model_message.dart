



import '../../Professeur/Message/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: DiopFatoumata,
    time: '17:30',
    text:
        'Salut, aurais-tu des ressources supplémentaires pour le cours de mathématiques ?',
    unread: true,
  ),
  Message(
    sender: NdiayeBaba,
    time: '16:30',
    text:
        "Bonjour, \nj'ai une question concernant le programme d'études. Peux-tu m'aider ?",
    unread: true,
  ),
  Message(
    sender: KonateAminata,
    time: '15:30',
    text:
        'Cher collègue, as-tu des idées pour rendre notre prochain projet plus interactif ?',
    unread: false,
  ),
  Message(
    sender: SowMamadou,
    time: '14:30',
    text:
        "Salutations ! Je voulais discuter de l'organisation de la sortie scolaire prévue le mois prochain.",
    unread: true,
  ),
  Message(
    sender: DialloAicha,
    time: '13:30',
    text:
        "Bonjour, aurais-tu des suggestions pour aborder le thème de l'environnement dans notre cours de sciences ?",
    unread: false,
  ),
  Message(
    sender: TraoreMamadou,
    time: '12:30',
    text:
        "Chère collègue, peux-tu me prêter ton livre de grammaire française ? J'en ai besoin pour préparer mes cours.",
    unread: false,
  ),
  Message(
    sender: KoneAminata,
    time: '11:30',
    text:
        'Salut ! Je voulais te remercier pour ton aide précieuse lors de la correction des examens.',
    unread: false,
  ),
  Message(
    sender: ToureKwame,
    time: '12:45',
    text:
        "Bonjour, j'ai entendu dire que tu avais une activité intéressante pour les élèves. Peux-tu m'en dire plus ?",
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: DiopFatoumata,
    time: '5:30',
    text:
        'Salut, aurais-tu des ressources supplémentaires pour le cours de Français ?',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text:
        "Bonjour ! Le cours s'est bien passé, les élèves étaient attentifs et posaient des questions intéressantes.",
    unread: true,
  ),
  Message(
    sender: DiopFatoumata,
    time: '3:45 PM',
    text: "C'est génial ! ",
    unread: true,
  ),
  Message(
    sender: DiopFatoumata,
    time: '3:15 PM',
    text: "Je suis content de voir que les élèves sont impliqués.",
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text:
        "Merci pour la suggestion. Au fait, as-tu reçu les nouveaux manuels scolaires pour notre matière ?",
    unread: true,
  ),
  Message(
    sender: DiopFatoumata,
    time: '2:30 PM',
    text: "Oui, je les ai reçus hier. ",
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text:
        "Parfait ! J'ai hâte de les consulter. Au fait, y a-t-il une réunion du corps enseignant prévue cette semaine ?",
    unread: true,
  ),
  Message(
    sender: DiopFatoumata,
    time: '2:00 PM',
    text: "Oui, il y aura une réunion mercredi après-midi. ",
    unread: true,
  ),
];