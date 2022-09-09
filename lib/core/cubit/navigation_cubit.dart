import 'package:blog_app/core/navigation/router_const.dart';
import 'package:blog_app/feature/blog/view/blog_detail_page.dart';
import 'package:blog_app/feature/blog/view/blog_page.dart';
import 'package:blog_app/feature/contact/view/contact_page.dart';
import 'package:blog_app/feature/education/view/education_page.dart';
import 'package:blog_app/feature/home/view/default_page.dart';
import 'package:blog_app/feature/profile/view/profile_page.dart';
import 'package:blog_app/feature/work/view/work_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationCubit extends Cubit<Widget> {
  NavigationCubit() : super(const DefaultPage());

  Map<String, Widget> navigation = {
    RouterConst.homePage: const DefaultPage(),
    RouterConst.profile: ProfilePage(),
    RouterConst.education: const EducationPage(),
    RouterConst.work: const WorkPage(),
    RouterConst.blog: BlogPage(),
    RouterConst.contact: const ContactPage(),
  };
  String rootName = RouterConst.homePage;
  void changeToPage(String root) {
    emit(navigation[root]!);
    rootName = root;
  }

  void changeToPageDetail(String topRoute, String root, int id) {
    Map<String, Widget> navigationDetail = {
      RouterConst.blogDetail: BlogDetailPage(id: id),
    };
    emit(navigationDetail[root]!);
    rootName = topRoute;
  }
}
