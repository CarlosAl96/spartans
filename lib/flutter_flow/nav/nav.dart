import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spartans/confirm_result/confirm_result_widget.dart';
import 'package:spartans/password_recovery2/password_recovery2_widget.dart';
import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Color(0xFF0E0E0E),
                child: Center(
                  child: Image.asset(
                    'assets/images/Group-25_(1).webp',
                    width: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          : WizardRegistroWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Color(0xFF0E0E0E),
                    child: Center(
                      child: Image.asset(
                        'assets/images/Group-25_(1).webp',
                        width: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : WizardRegistroWidget(),
          routes: [
            FFRoute(
              name: 'WizardRegistro',
              path: 'wizardRegistro',
              builder: (context, params) => WizardRegistroWidget(),
            ),
            FFRoute(
              name: 'WizardRegistro2',
              path: 'registro-p2',
              builder: (context, params) => WizardRegistro2Widget(),
            ),
            FFRoute(
              name: 'WizardRegistro3',
              path: 'registro-p3',
              builder: (context, params) => WizardRegistro3Widget(),
            ),
            FFRoute(
              name: 'WizardRegistro4',
              path: 'registro-p4',
              builder: (context, params) => WizardRegistro4Widget(),
            ),
            FFRoute(
              name: 'Home',
              path: 'home/:accept/:id',
              builder: (context, params) => HomeWidget(
                accept: params.getParam('accept', ParamType.String),
                id: params.getParam('id', ParamType.String),
              ),
            ),
            FFRoute(
              name: 'editProfile',
              path: 'editProfile',
              builder: (context, params) => EditProfileWidget(),
            ),
            FFRoute(
              name: 'SuccessPage',
              path: 'successPage',
              builder: (context, params) => SuccessPageWidget(),
            ),
            FFRoute(
              name: 'Ranking',
              path: 'ranking',
              builder: (context, params) => RankingWidget(),
            ),
            FFRoute(
              name: 'PasswordRecovery',
              path: 'passwordRecovery',
              builder: (context, params) => PasswordRecoveryWidget(),
            ),
            FFRoute(
              name: 'Menu',
              path: 'menu',
              builder: (context, params) => MenuWidget(),
            ),
            FFRoute(
              name: 'userProfile',
              path: 'userProfile',
              builder: (context, params) => UserProfileWidget(),
            ),
            FFRoute(
              name: 'challengePlayer',
              path: 'challengePlayer',
              builder: (context, params) => ChallengePlayerWidget(),
            ),
            FFRoute(
              name: 'loginPage',
              path: 'loginPage',
              builder: (context, params) => LoginPageWidget(),
            ),
            FFRoute(
              name: 'matchResults',
              path: 'matchResults',
              builder: (context, params) => MatchResultsWidget(),
            ),
            FFRoute(
              name: 'singlesRegister',
              path: 'singlesReg',
              builder: (context, params) => SinglesRegisterWidget(),
            ),
            FFRoute(
              name: 'doblesRegister',
              path: 'doblesReg',
              builder: (context, params) => DoblesRegisterWidget(),
            ),
            FFRoute(
              name: 'torneoSingles',
              path: 'torneoSingles',
              builder: (context, params) => TorneoSinglesWidget(),
            ),
            FFRoute(
              name: 'searchResults',
              path: 'searchResults',
              builder: (context, params) => SearchResultsWidget(),
            ),
            FFRoute(
              name: 'braketsSingles8',
              path: 'braketsSingles8',
              builder: (context, params) => BraketsSingles8Widget(),
            ),
            FFRoute(
              name: 'braketsSingles4',
              path: 'braketsSingles4',
              builder: (context, params) => BraketsSingles4Widget(),
            ),
            FFRoute(
              name: 'braketsSinglesSemis',
              path: 'braketsSinglesSemis',
              builder: (context, params) => BraketsSinglesSemisWidget(),
            ),
            FFRoute(
              name: 'braketsSinglesFinal',
              path: 'braketsSinglesFinal',
              builder: (context, params) => BraketsSinglesFinalWidget(),
            ),
            FFRoute(
              name: 'torneoDoubles',
              path: 'torneoDoubles',
              builder: (context, params) => TorneoDoublesWidget(),
            ),
            FFRoute(
              name: 'passwordRecovery2',
              path: 'passwordRecovery2/:code',
              builder: (context, params) => PasswordRecovery2Widget(
                  code: params.getParam('code', ParamType.String)),
            ),
            FFRoute(
              name: 'confirmResult',
              path: 'confirmResult/:id',
              builder: (context, params) => ConfirmResultWidget(
                id: params.getParam('id', ParamType.String)
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
