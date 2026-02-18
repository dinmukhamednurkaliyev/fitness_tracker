import 'package:appearance/appearance.dart';
import 'package:core/core.dart';
import 'package:session/session.dart';

class SessionControllerState {
  const SessionControllerState({this.sessions = const []});
  final List<SessionCardData> sessions;
}

class SessionController extends Cubit<SessionControllerState> {
  SessionController() : super(const SessionControllerState());

  void loadSessions(SemanticColor color) {
    final sessions = [
      SessionCardData(
        title: 'Yoga Group',
        trainerName: 'Kellie Jetton',
        difficulty: 'Medium',
        duration: '1 hr',
        calories: '115 kcal',
        description: 'Gentle vinvasa flow to improve flexibility and balance',
        backgroundColor: color.cardBackgroundYellow,
      ),
      SessionCardData(
        title: 'Balance',
        trainerName: 'Kellie Jetton',
        difficulty: 'Easy',
        duration: '30 min',
        calories: '90 kcal',
        description: 'Light session to activate core and stabilizers.',
        backgroundColor: color.cardBackgroundBlue,
      ),
      SessionCardData(
        title: 'Strength Training',
        trainerName: 'Kellie Jetton',
        difficulty: 'Hard',
        duration: '30 min',
        calories: '250 kcal',
        description: 'Build lean muscle and increase metabolism',
        backgroundColor: color.cardBackgroundYellow,
      ),
      SessionCardData(
        title: 'Cardio Blast',
        trainerName: 'Kellie Jetton',
        difficulty: 'Medium',
        duration: '45 min',
        calories: '300 kcal',
        description: 'High intensity interval training to boost metabolism',
        backgroundColor: color.cardBackgroundBlue,
      ),
    ];

    emit(SessionControllerState(sessions: sessions));
  }
}
