import 'package:blog_app/core/navigation/router_const.dart';
import 'package:blog_app/feature/education/view/education_page.dart';
import 'package:blog_app/feature/home/view/default_page.dart';
import 'package:blog_app/feature/profile/view/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationCubit extends Cubit<Widget> {
  NavigationCubit() : super(const DefaultPage());

  Map<String, Widget> navigation = {
    RouterConst.homePage: const DefaultPage(),
    RouterConst.profile: const ProfilePage(),
    RouterConst.education: const EducationPage()
  };
  String rootName = RouterConst.homePage;
  void changeToPage(String root) {
    emit(navigation[root]!);
    rootName = root;
  }
}
