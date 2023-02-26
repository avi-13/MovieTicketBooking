import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/json/task_bean.dart';
import 'package:todo_list/json/task_icon_bean.dart';
import 'package:todo_list/model/all_model.dart';
import 'package:todo_list/pages/all_page.dart';

class ProviderConfig {
  static ProviderConfig _instance;

  static ProviderConfig getInstance() {
    if (_instance == null) {
      _instance = ProviderConfig._internal();
    }
    return _instance;
  }

  ProviderConfig._internal();

  ChangeNotifierProvider<GlobalModel> getGlobal(Widget child) {
    return ChangeNotifierProvider<GlobalModel>(
      create: (context) => GlobalModel(),
      child: child,
    );
  }

  ChangeNotifierProvider<MainPageModel> getMainPage() {
    return ChangeNotifierProvider<MainPageModel>(
      create: (context) => MainPageModel(),
      child: MainPage(),
    );
  }

  ChangeNotifierProvider<TaskDetailPageModel> getTaskDetailPage(
    int index,
    TaskBean taskBean, {
    DoneTaskPageModel doneTaskPageModel,
    SearchPageModel searchPageModel,
  }) {
    return ChangeNotifierProvider<TaskDetailPageModel>(
      create: (context) => TaskDetailPageModel(
        taskBean,
        doneTaskPageModel: doneTaskPageModel,
        searchPageModel: searchPageModel,
        heroTag: index,
      ),
      child: TaskDetailPage(),
    );
  }

  ChangeNotifierProvider<EditTaskPageModel> getEditTaskPage(
      TaskIconBean taskIcon,
      {TaskDetailPageModel taskDetailPageModel,
      TaskBean taskBean}) {
    return ChangeNotifierProvider<EditTaskPageModel>(
      create: (context) => EditTaskPageModel(oldTaskBean: taskBean),
      child: EditTaskPage(
        taskIcon,
        taskDetailPageModel: taskDetailPageModel,
      ),
    );
  }

  ChangeNotifierProvider<IconSettingPageModel> getIconSettingPage() {
    return ChangeNotifierProvider<IconSettingPageModel>(
      create: (context) => IconSettingPageModel(),
      child: IconSettingPage(),
    );
  }

  ChangeNotifierProvider<ThemePageModel> getThemePage() {
    return ChangeNotifierProvider<ThemePageModel>(
      create: (context) => ThemePageModel(),
      child: ThemePage(),
    );
  }

  ChangeNotifierProvider<AvatarPageModel> getAvatarPage(
      {MainPageModel mainPageModel}) {
    return ChangeNotifierProvider<AvatarPageModel>(
      create: (context) => AvatarPageModel(),
      child: AvatarPage(
        mainPageModel: mainPageModel,
      ),
    );
  }

  ChangeNotifierProvider<DoneTaskPageModel> getDoneTaskPage() {
    return ChangeNotifierProvider<DoneTaskPageModel>(
      create: (context) => DoneTaskPageModel(),
      child: DoneTaskPage(),
    );
  }

  ChangeNotifierProvider<SearchPageModel> getSearchPage() {
    return ChangeNotifierProvider<SearchPageModel>(
      create: (context) => SearchPageModel(),
      child: SearchPage(),
    );
  }

  ChangeNotifierProvider<FeedbackPageModel> getFeedbackPage(
      FeedbackWallPageModel feedbackWallPageModel) {
    return ChangeNotifierProvider<FeedbackPageModel>(
      create: (context) => FeedbackPageModel(),
      child: FeedbackPage(feedbackWallPageModel),
    );
  }

  ChangeNotifierProvider<FeedbackWallPageModel> getFeedbackWallPage() {
    return ChangeNotifierProvider<FeedbackWallPageModel>(
      create: (context) => FeedbackWallPageModel(),
      child: FeedbackWallPage(),
    );
  }

  ChangeNotifierProvider<LoginPageModel> getLoginPage({bool isFirst = false}) {
    return ChangeNotifierProvider<LoginPageModel>(
      create: (context) => LoginPageModel(isFirst: isFirst),
      child: LoginPage(),
    );
  }

  ChangeNotifierProvider<RegisterPageModel> getRegisterPage() {
    return ChangeNotifierProvider<RegisterPageModel>(
      create: (context) => RegisterPageModel(),
      child: RegisterPage(),
    );
  }

  ChangeNotifierProvider<ResetPasswordPageModel> getResetPasswordPage(
      {bool isReset = true}) {
    return ChangeNotifierProvider<ResetPasswordPageModel>(
      create: (context) => ResetPasswordPageModel(isReset),
      child: ResetPasswordPage(),
    );
  }

  ChangeNotifierProvider<NetPicturesPageModel> getNetPicturesPage(
      {@required String useType,
      AccountPageModel accountPageModel,
      TaskBean taskBean}) {
    return ChangeNotifierProvider<NetPicturesPageModel>(
      create: (context) => NetPicturesPageModel(
        useType: useType,
        accountPageModel: accountPageModel,
        taskBean: taskBean,
      ),
      child: NetPicturesPage(),
    );
  }

  ChangeNotifierProvider<AccountPageModel> getAccountPage() {
    return ChangeNotifierProvider<AccountPageModel>(
      create: (context) => AccountPageModel(),
      child: AccountPage(),
    );
  }
}
