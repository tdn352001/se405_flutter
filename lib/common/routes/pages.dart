import 'package:chatty/common/middlewares/middlewares.dart';
import 'package:chatty/pages/contact/index.dart';
import 'package:chatty/pages/frame/email_login/index.dart';
import 'package:chatty/pages/frame/forgot/index.dart';
import 'package:chatty/pages/frame/phone/index.dart';
import 'package:chatty/pages/frame/register/index.dart';
import 'package:chatty/pages/frame/send_code/index.dart';
import 'package:chatty/pages/frame/sign_in/index.dart';
import 'package:chatty/pages/frame/welcome/index.dart';
import 'package:chatty/pages/message/chat/index.dart';
import 'package:chatty/pages/message/index.dart';
import 'package:chatty/pages/message/photoview/binding.dart';
import 'package:chatty/pages/message/photoview/view.dart';
import 'package:chatty/pages/message/videocall/index.dart';
import 'package:chatty/pages/message/voicecall/index.dart';
import 'package:chatty/pages/profile/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => SignInPage(),
      binding: SignInBinding(),
    ),

    // GetPage(
    //   name: AppRoutes.Application,
    //   page: () => ApplicationPage(),
    //   binding: ApplicationBinding(),
    //   middlewares: [
    //     RouteAuthMiddleware(priority: 1),
    //   ],
    // ),

    GetPage(
        name: AppRoutes.EmailLogin,
        page: () => EmailLoginPage(),
        binding: EmailLoginBinding()),
    GetPage(
        name: AppRoutes.Register,
        page: () => RegisterPage(),
        binding: RegisterBinding()),
    GetPage(
        name: AppRoutes.Forgot,
        page: () => ForgotPage(),
        binding: ForgotBinding()),
    GetPage(
        name: AppRoutes.Phone,
        page: () => PhonePage(),
        binding: PhoneBinding()),
    GetPage(
        name: AppRoutes.SendCode,
        page: () => SendCodePage(),
        binding: SendCodeBinding()),
    GetPage(
        name: AppRoutes.Contact,
        page: () => ContactPage(),
        binding: ContactBinding()),
    GetPage(
      name: AppRoutes.Message,
      page: () => MessagePage(),
      binding: MessageBinding(),
      middlewares: [
        RouteAuthMiddleware(priority: 1),
      ],
    ),
    GetPage(
        name: AppRoutes.Profile,
        page: () => ProfilePage(),
        binding: ProfileBinding()),
    GetPage(
        name: AppRoutes.Chat, page: () => ChatPage(), binding: ChatBinding()),

    GetPage(
        name: AppRoutes.Photoimgview,
        page: () => PhotoImgViewPage(),
        binding: PhotoImgViewBinding()),
    GetPage(
        name: AppRoutes.VoiceCall,
        page: () => VoiceCallViewPage(),
        binding: VoiceCallViewBinding()),
    GetPage(
        name: AppRoutes.VideoCall,
        page: () => VideoCallPage(),
        binding: VideoCallBinding()),
  ];
}
