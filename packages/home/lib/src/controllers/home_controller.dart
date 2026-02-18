import 'package:appearance/appearance.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';

class HomeControllerState {
  const HomeControllerState({
    required this.userName,
    required this.avatarUrl,
    required this.challengeParticipants,
    required this.workouts,
    required this.socials,
    required this.selectedDate,
  });
  final String userName;
  final String avatarUrl;
  final List<String> challengeParticipants;
  final List<WorkoutCardData> workouts;
  final List<SocialMediaCardData> socials;
  final DateTime selectedDate;

  HomeControllerState copyWith({
    String? userName,
    String? avatarUrl,
    List<String>? challengeParticipants,
    List<WorkoutCardData>? workouts,
    List<SocialMediaCardData>? socials,
    DateTime? selectedDate,
  }) {
    return HomeControllerState(
      userName: userName ?? this.userName,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      challengeParticipants:
          challengeParticipants ?? this.challengeParticipants,
      workouts: workouts ?? this.workouts,
      socials: socials ?? this.socials,
      selectedDate: selectedDate ?? this.selectedDate,
    );
  }
}

class HomeController extends Cubit<HomeControllerState> {
  HomeController() : super(_initialState());

  static HomeControllerState _initialState() => HomeControllerState(
    userName: 'Amber',
    avatarUrl:
        'https://plus.unsplash.com/premium_photo-1664369473447-64172945caa0?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fGdpcmwlMjBwb3J0cmFpdCUyMHByb2Zlc3Npb25hbHxlbnwwfHwwfHx8MA%3D%3Dpor.webp',
    selectedDate: DateTime.now(),
    challengeParticipants: [],
    workouts: [],
    socials: [],
  );
  void loadData(SemanticColor color) {
    emit(
      HomeControllerState(
        userName: 'Amber',
        avatarUrl:
            'https://plus.unsplash.com/premium_photo-1664369473447-64172945caa0?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fGdpcmwlMjBwb3J0cmFpdCUyMHByb2Zlc3Npb25hbHxlbnwwfHwwfHx8MA%3D%3Dpor.webp',
        selectedDate: state.selectedDate,
        challengeParticipants: [
          'https://images.unsplash.com/photo-1544725176-7c40e5a71c5e?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
          'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
          'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
          'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
          'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
          'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
          'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
          'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
          'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=60',
        ],
        workouts: [
          WorkoutCardData(
            title: 'Yoga Group',
            difficulty: 'Medium',
            date: '25 Nov.',
            time: '14:00-15:00',
            room: 'A5 room',
            trainerName: 'Kellie Jetton',
            trainerImage:
                'https://images.unsplash.com/photo-1549351236-caca0f174515?q=80&w=928&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3DYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            backgroundColor: color.cardBackgroundYellow,
          ),
          WorkoutCardData(
            title: 'Cardio Group',
            difficulty: 'Hard',
            date: '28 Nov.',
            time: '10:00-11:00',
            room: 'A3 room',
            trainerName: 'Loretta Waller',
            trainerImage:
                'https://images.unsplash.com/photo-1635328372330-757aa2e61d57?q=80&w=774&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            backgroundColor: color.cardBackgroundBlue,
          ),
        ],
        socials: [
          SocialMediaCardData(
            icon: Icons.camera_alt,
            backgroundColor: color.socialPink,
          ),
          SocialMediaCardData(
            icon: Icons.play_circle_outline,
            backgroundColor: color.socialRed,
          ),
          SocialMediaCardData(
            icon: Icons.chat_bubble_outline,
            backgroundColor: color.socialBlue,
          ),
        ],
      ),
    );
  }

  void updateDate(DateTime newDate) {
    emit(state.copyWith(selectedDate: newDate));
  }
}
