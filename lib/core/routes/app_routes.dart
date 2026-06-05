class AppRoutes {
  // 1. AUTHENTICATION & ONBOARDING
  static const login = '/login';
  static const languageOnboarding = '/language-onboarding';
  static const notificationOnboarding = '/notification-onboarding';

  // 2. PRE-GAME FLOW (SETUP)
  static const subjects = '/';
  static const subSubjects = '/sub-subjects';
  static const modes = '/modes';
  static const topics = '/topics';
  static const testIntro = '/test-intro';
  static const learningCards = '/learning-cards';
  static const quizOverview = '/quiz-overview';

  // 3. SETTINGS & PREMIUM
  static const settings = '/settings';
  static const paywall = '/paywall';
  

  // 4. CORE GAMEPLAY FLOW (ACTIVE TEST)
  static const activeTest = '/active-test';
  static const question = '/question';
  static const feedback = '/feedback';
  static const midSummary = '/mid-summary';

  // 5. POST-GAME FLOW (RESULTS & SOCIAL)
  static const results = '/results';
  static const leaderboard = '/leaderboard';
  static const String history = '/history';
  static const review = '/review';
}
