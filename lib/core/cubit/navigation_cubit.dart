import 'package:blog_app/core/navigation/router_const.dart';
import 'package:blog_app/feature/profile/view/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationCubit extends Cubit<Widget> {
  NavigationCubit() : super(const SizedBox());

  Map<String, Widget> navigation = {RouterConst.profile: const ProfilePage()};
  String rootName = "";
  void changeToPage(String root) {
    emit(navigation[root]!);
    rootName = root;
  }
}
