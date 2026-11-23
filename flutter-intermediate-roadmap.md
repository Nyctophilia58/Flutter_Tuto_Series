# Flutter: Beginner to Intermediate Roadmap

**Time estimate:** 4-6 months at 8-10 hours a week (about 3 months if you already program). Each phase ends with a project. Build every project; don't just watch tutorials.

---

## Phase 0: Setup (2-3 days)
- [ ] Install Flutter SDK, Android Studio or VS Code, and the Flutter and Dart extensions
- [ ] Run `flutter doctor` until everything passes
- [ ] Set up an emulator and a physical device (better for performance testing)
- [ ] Learn Git basics and create a GitHub account to host every project

## Phase 1: Dart fundamentals (2 weeks)
- [ ] Basics: variables, `final` vs `const`, types, operators, control flow
- [ ] Functions: named, optional, arrow, higher-order
- [ ] Collections: `List`, `Set`, `Map`, and `map`, `where`, `fold`, `reduce`
- [ ] OOP: classes, constructors (named, factory, `const`), inheritance, abstract classes, mixins, extensions, enhanced enums
- [ ] Null safety: `?`, `!`, `??`, `?.`, `late`
- [ ] Async: `Future`, `async`/`await`, `Stream`, `StreamController`, `try`/`catch`
- [ ] Modern Dart: records, patterns, switch expressions, sealed classes
- [ ] Generics and `Isolate` basics

**Practice:** DartPad plus 20-30 small exercises (CLI to-do app, bank-account class hierarchy).

## Phase 2: Flutter core (4 weeks)

### Week 1: Widgets and layout
- [ ] Widget tree, `StatelessWidget` vs `StatefulWidget`, `BuildContext`
- [ ] Layout: `Row`, `Column`, `Stack`, `Expanded`, `Flexible`, `Container`, `Padding`, `Align`, `SizedBox`
- [ ] Constraints: "constraints go down, sizes go up, parent sets position"
- [ ] Scrolling: `ListView`, `GridView`, `CustomScrollView`, Slivers
- [ ] Common widgets: `Text`, `Image`, `Icon`, `Card`, `ListTile`, `AppBar`, `Scaffold`, `BottomNavigationBar`, `Drawer`

### Week 2: Interaction and state basics
- [ ] Forms: `TextField`, `Form`, `TextFormField`, validation, `FocusNode`
- [ ] Gestures: `GestureDetector`, `InkWell`, `Dismissible`, `Draggable`
- [ ] `setState`, widget lifecycle (`initState`, `dispose`, `didUpdateWidget`), keys (`ValueKey`, `GlobalKey`)
- [ ] `TextEditingController` and `ScrollController`, including disposing them

### Week 3: Navigation, theming, responsiveness
- [ ] `Navigator` 1.0, then **`go_router`**: named routes, path and query params, nested navigation, redirects and guards
- [ ] Theming: `ThemeData`, Material 3, `ColorScheme.fromSeed`, dark mode, text themes
- [ ] Responsive: `MediaQuery`, `LayoutBuilder`, `OrientationBuilder`, breakpoints
- [ ] Assets: images, fonts, SVGs, `pubspec.yaml`
- [ ] Packages: pub.dev, how to judge a package (likes, points, maintenance, null safety)

### Week 4: Animations
- [ ] Implicit: `AnimatedContainer`, `AnimatedOpacity`, `TweenAnimationBuilder`, `AnimatedSwitcher`
- [ ] Explicit: `AnimationController`, `Tween`, `CurvedAnimation`, `AnimatedBuilder`
- [ ] `Hero` and page transitions
- [ ] Optional: `flutter_animate`

**Project:** Notes or Expense Tracker UI with multiple screens, a form, dark mode and `go_router`. Data in memory only.

## Phase 3: State management (3 weeks)
**Concepts:** ephemeral vs app state, lifting state up, `InheritedWidget`, `ChangeNotifier`, `ValueNotifier`.

Pick ONE primary solution and learn it deeply:

| Option | Best for | Notes |
|---|---|---|
| **Riverpod** (recommended) | Most apps, testability | Providers, `AsyncNotifier`, `riverpod_generator`, `AsyncValue` |
| **Bloc / Cubit** | Teams, strict structure | Events, states, `BlocBuilder`, `BlocListener` |
| **Provider** | Simple apps, legacy code | Riverpod's predecessor, still common |

- [ ] Immutable state with `freezed` and `json_serializable`
- [ ] `read` vs `watch` vs `listen`
- [ ] Loading, error and data states

**Project:** refactor the Phase 2 app to your chosen solution, adding a todo or shopping-cart flow.

## Phase 4: Data, networking, persistence (3 weeks)

### Networking
- [ ] HTTP with `dio` (preferred) or `http`
- [ ] REST: GET, POST, PUT, DELETE, headers, auth tokens, interceptors
- [ ] JSON serialization
- [ ] Error handling: timeouts, offline, 401, 500, retry

### Local storage
- [ ] `shared_preferences` for settings
- [ ] `flutter_secure_storage` for tokens
- [ ] SQLite with `drift` (recommended) or `sqflite`
- [ ] Alternatives: Hive, Isar, ObjectBox

### Backend (learn at least one)
- [ ] Firebase: Auth, Firestore, Storage, Cloud Messaging
- [ ] Supabase (Postgres-based alternative)
- [ ] Your own REST API

### Pagination and caching
- [ ] Infinite scroll, pull-to-refresh, offline-first pattern

**Project:** weather, movie or news app using a public API, with search, pagination, offline cache and favorites.

## Phase 5: Architecture and code quality (3 weeks)
- [ ] Feature-first structure (`features/auth/{data,domain,presentation}`)
- [ ] Clean Architecture basics: repository pattern, data sources, models vs entities, use cases only where useful
- [ ] Dependency injection: Riverpod providers or `get_it`
- [ ] Error handling: `Result`/`Either`, custom exceptions, global handler
- [ ] SOLID, DRY, composition over inheritance; split big widgets
- [ ] Linting: `flutter analyze`, `flutter_lints` or `very_good_analysis`
- [ ] Flavors/environments (dev, staging, prod), `--dart-define` for secrets
- [ ] Localization: `flutter_localizations`, ARB files, `intl`

## Phase 6: Testing and debugging (2 weeks)
- [ ] Unit tests (logic, repositories, notifiers) with `mockito` or `mocktail`
- [ ] Widget tests: `pumpWidget`, `find`, `tester.tap`, `pumpAndSettle`
- [ ] Golden tests
- [ ] Integration tests with `integration_test`
- [ ] Flutter DevTools: widget inspector, performance overlay, memory profiler, network tab
- [ ] Reading stack traces; fixing "RenderFlex overflowed"

**Target:** about 60%+ coverage on business logic; every project has some tests.

## Phase 7: Performance and platform features (2-3 weeks)
- [ ] Performance: `const` constructors, `ListView.builder`, narrow rebuilds (`select`, small `Consumer`), no heavy work in `build()`, `cached_network_image`, `compute` / `Isolate.run`
- [ ] Permissions, camera and image picker, geolocation and maps
- [ ] Local and push notifications, biometrics, deep links
- [ ] `MethodChannel` demo with simple Kotlin or Swift
- [ ] Background work with `workmanager`

## Phase 8: Release and portfolio (2 weeks)
- [ ] Launcher icons, splash screen, app name
- [ ] Android: signing keys, `build.gradle`, AAB build
- [ ] iOS (needs a Mac): certificates, provisioning, TestFlight
- [ ] Google Play Console (one-time $25), App Store (Apple Developer Program, $99/year)
- [ ] CI/CD with GitHub Actions (tests and builds)
- [ ] Firebase Crashlytics and Analytics

**Capstone:** one complete published app with email and Google sign-in, a real backend, offline support, clean architecture, tests, CI, and polished UI with dark mode. Ideas: habit tracker, recipe app, fitness log, budget manager, small chat app.

---

## Intermediate checklist
- [ ] I can build common UIs from a design without much trouble
- [ ] I can explain constraints and why overflow errors happen
- [ ] I can explain why I chose my state approach and how it rebuilds widgets
- [ ] I write async code safely with loading, error and empty states
- [ ] I structure projects so features are separate and testable
- [ ] I can integrate a REST API and Firebase from scratch
- [ ] I write unit and widget tests
- [ ] I can use DevTools to find jank or memory problems
- [ ] I've shipped at least one app to a store or testers
- [ ] I can read other people's Flutter code and package source

## Weekly routine
| Time | Activity |
|---|---|
| 30% | Learn: docs, videos, courses |
| 50% | Build: projects, no copy-paste |
| 10% | Read: others' code, Flutter source |
| 10% | Review: refactor old code, write notes |

**Habits:**
- Code a little every day; consistency beats marathons
- Avoid tutorial hell: rebuild without watching, then add your own feature
- Recreate real app UIs (Spotify, Instagram, Airbnb) to learn layout fast
- Push everything to GitHub with a README and screenshots

## Resources (verify current availability and pricing)
**Official**
- docs.flutter.dev, the Flutter YouTube channel (Widget of the Week, Decoding Flutter)
- dart.dev/language and Dart codelabs
- Flutter cookbook and codelabs

**Courses and channels**
- Angela Yu, Flutter Bootcamp (Udemy)
- Code With Andrea (architecture, Riverpod)
- Reso Coder (clean architecture, testing)
- Mitch Koko, Flutter Mapp (YouTube)
- Flutter Apprentice (kodeco.com)

**Practice and community**
- DartPad, Exercism (Dart track)
- r/FlutterDev, Flutter Discord, Stack Overflow
- `flutter/samples` GitHub repo

## Common mistakes to avoid
1. Starting state management before understanding `setState` and the widget tree
2. Putting everything in `main.dart` or giant widgets
3. Learning five state solutions superficially instead of one deeply
4. Ignoring `dispose()` (memory leaks)
5. Using `!` and `dynamic` everywhere
6. Skipping tests "for later"
7. Never testing on a real device or in release mode
8. Hard-coding API keys in source

## 20-week timeline
| Weeks | Focus |
|---|---|
| 1-2 | Dart |
| 3-6 | Flutter core and UI project |
| 7-9 | State management |
| 10-12 | Networking and persistence |
| 13-15 | Architecture and testing |
| 16-17 | Performance and native features |
| 18-20 | Capstone and publishing |
