import 'package:appearance/appearance.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

class ProfileControllerState {
  const ProfileControllerState({
    this.userName = '',
    this.userAddress = '',
    this.userAvatarUrl = '',
    this.metrics = const [],
    this.activities = const [],
  });
  final String userName;
  final String userAddress;
  final String userAvatarUrl;
  final List<MetricCardData> metrics;
  final List<ActivityItemData> activities;

  ProfileControllerState copyWith({
    String? userName,
    String? userAddress,
    String? userAvatarUrl,
    List<MetricCardData>? metrics,
    List<ActivityItemData>? activities,
  }) {
    return ProfileControllerState(
      userName: userName ?? this.userName,
      userAddress: userAddress ?? this.userAddress,
      userAvatarUrl: userAvatarUrl ?? this.userAvatarUrl,
      metrics: metrics ?? this.metrics,
      activities: activities ?? this.activities,
    );
  }
}

class ProfileController extends Cubit<ProfileControllerState> {
  ProfileController() : super(const ProfileControllerState());

  void loadProfile(SemanticColor color) {
    emit(
      state.copyWith(
        userName: 'Amber Doe Smith',
        userAddress: '123 Main St, New York, USA',
        userAvatarUrl:
            'https://plus.unsplash.com/premium_photo-1664369473447-64172945caa0?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fGdpcmwlMjBwb3J0cmFpdCUyMHByb2Zlc3Npb25hbHxlbnwwfHwwfHx8MA%3D%3Dpor.webp',
        metrics: [
          MetricCardData(
            title: 'Start weight',
            value: '53.3 kg',
            backgroundColor: color.metricBackgroundGreen,
          ),
          MetricCardData(
            title: 'Goal',
            value: '50.0 kg',
            backgroundColor: color.metricBackgroundBlue,
          ),
          MetricCardData(
            title: 'Daily calories',
            value: '740 kcal',
            backgroundColor: color.metricBackgroundOrange,
          ),
        ],
        activities: [
          const ActivityItemData(
            title: 'Physical Activity',
            subtitle: '2 days ago',
            icon: Icons.directions_run,
          ),
          const ActivityItemData(
            title: 'Statistics',
            subtitle: '109 kilo/year',
            icon: Icons.assessment,
          ),
          const ActivityItemData(
            title: 'Routes',
            subtitle: '109 routes',
            icon: Icons.route,
          ),
          const ActivityItemData(
            title: 'Equipment',
            subtitle: 'Nike pegasus 3000',
            icon: Icons.flash_on,
          ),
          const ActivityItemData(
            title: 'Achievements',
            subtitle: '109 achievements',
            icon: Icons.emoji_events,
          ),
        ],
      ),
    );
  }
}
