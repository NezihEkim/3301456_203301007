import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:h1zen/anaSayfa.dart';
import 'package:h1zen/api.dart';
import 'package:h1zen/basketbol.dart';
import 'package:h1zen/file_operations.dart';
import 'package:h1zen/futbol.dart';
import 'package:h1zen/masaTenisibireysel.dart';
import 'package:h1zen/masaTenisiikili.dart';
import 'package:h1zen/masatenisi12.dart';
import 'package:h1zen/onay.dart';
import 'package:h1zen/pages/adsensesView.dart';
import 'package:h1zen/pages/dailydatasView.dart';
import 'package:h1zen/pages/domainFirmsView.dart';
import 'package:h1zen/pages/domainsView.dart';
import 'package:h1zen/pages/hostingsView.dart';
import 'package:h1zen/pages/settingsView.dart';
import 'package:h1zen/providers/domainfirms_provider.dart';
import 'package:h1zen/screens/adminlogin/adminlogin_screen.dart';
import 'package:h1zen/screens/login/login_screen.dart';
import 'package:h1zen/screens/seotalep/seotalep_screen.dart';
import 'package:h1zen/screens/signup/signup_screen.dart';
import 'package:h1zen/screens/welcome/welcome_screen.dart';
import 'package:h1zen/services/auth/auth_methods.dart';
import 'package:h1zen/services/domainfirms/firestore_domainfirms_service.dart';
import 'package:h1zen/translations/codegen_loader.g.dart';
import 'package:h1zen/translations/locale_keys.g.dart';
import 'package:h1zen/veritabani.dart';
import 'package:h1zen/voleybol.dart';
import 'package:provider/provider.dart';

import 'package:firebase_core/firebase_core.dart';
import 'constants.dart';
import 'firebase_options.dart';

import 'notifiers/menu_notifier.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('tr', 'TR')],
        path: 'assets/translations',
        fallbackLocale: Locale('en', 'US'),
        assetLoader: CodegenLoader(),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<FlutterFireAuthService>(
            create: (_) => FlutterFireAuthService(FirebaseAuth.instance),
          ),
          StreamProvider(
            create: (context) =>
            context.read<FlutterFireAuthService>().authStateChanges,
            initialData: null,
          ),
          Provider<FirestoreDomainFirmsService>(
            create: (_) => FirestoreDomainFirmsService(),
          ),
          ChangeNotifierProvider(create: (context) => DomainFirmsProvider()),
          StreamProvider(
            create: (context) =>
                context.read<FirestoreDomainFirmsService>().getDomainFirms(),
            initialData: null,
          ),
          ChangeNotifierProvider(create: (context) => MenuDrawerNotifier()),
        ],
        child: MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          title: LocaleKeys.appname.tr(),
          theme: ThemeData(
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: Colors.white,
          ),
          home: WelcomeScreen(),
          routes: {
            "home": (_) => WelcomeScreen(),
            "signup": (_) => SignUpScreen(),
            "login": (_) => LoginScreen(),
            "seotalep": (_) => SeoTalepScreen(),
            "adminlogin": (_) => AdminLoginScreen(),
            "domainfirms": (_) => DomainFirmsView(),
            "domains": (_) => DomainsView(),
            "hostings": (_) => HostingsView(),
            "adsenses": (_) => AdsensesView(),
            "dailydatas": (_) => DailyDatasView(),
            "settings": (_) => SettingsView(),
            "anasayfa": (_) => AnaSayfa(),
            "futbol": (_) => Futbol(),
            "voleybol": (_) => Voleybol(),
            "basketbol": (_) => Basketbol(),
            "masatenisibireysel": (_) => MasaTenisibireysel(),
            "masatenisiikili": (_) => MasaTenisiikili(),
            "masatenisi12": (_) => MasaTenisi12(),
            "onay": (_) => Onay(),
            "dosyaYaz": (_) => FileOperationsScreen(),
            "veritabani": (_) => Veri(),
            "ApiRenk": (_) => ApiRenk(),


          },
        ));
  }
}