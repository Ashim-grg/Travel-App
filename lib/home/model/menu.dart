import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:travel_app/home/view/app_main_screen.dart';
import 'package:travel_app/plans/view/pages/make_plan_page.dart';
import 'package:travel_app/post/view/pages/post_make_page.dart';
import 'package:travel_app/profile/view/pages/profile_page.dart';
import 'package:travel_app/search/view/pages/search_page.dart';

final menu =[
  {
    'icon': LucideIcons.telescope,
    'destination': const AppMainScreen()
  },
  {
    'icon': LucideIcons.notebookPen,
    'destination': const MakePlanPage()
  },
  {
    'icon': LucideIcons.mapPinPlus,
    'destination': const PostMakePage()
  },
  {
    'icon': LucideIcons.userRoundSearch,
    'destination': const SearchPage()
  },
  {
    'icon': LucideIcons.userRound,
    'destination': const ProfilePage()
  }
];
