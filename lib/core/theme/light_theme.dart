import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:finio/core/constants/app_radius.dart';
import 'package:finio/core/constants/app_thickness.dart';
import 'package:finio/core/theme/app_color_schemes.dart';

ThemeData getLightTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    // ----------------------------------------------------------
    // BASE COLORS
    // ----------------------------------------------------------
    scaffoldBackgroundColor: ColorManager.lightBackground,
    canvasColor: ColorManager.lightCanvasColor,
    cardColor: ColorManager.lightCardBackground,
    dividerColor: ColorManager.lightDivider,
    shadowColor: ColorManager.lightShadow,
    highlightColor: ColorManager.lightHighlight,
    hoverColor: ColorManager.lightHoverOverlay,
    focusColor: ColorManager.lightFocusOverlay,
    splashColor: ColorManager.lightSplash,
    disabledColor: ColorManager.lightTextDisabled,
    hintColor: ColorManager.lightTextHint,
    unselectedWidgetColor: ColorManager.lightTextDisabled,

    // ----------------------------------------------------------
    // COLOR SCHEME
    // ----------------------------------------------------------
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: ColorManager.lightPrimary,
      onPrimary: ColorManager.lightOnPrimary,
      primaryContainer: ColorManager.lightPrimaryContainer,
      onPrimaryContainer: ColorManager.lightOnPrimaryContainer,
      secondary: ColorManager.lightSecondary,
      onSecondary: ColorManager.lightOnSecondary,
      secondaryContainer: ColorManager.lightSecondaryContainer,
      onSecondaryContainer: ColorManager.lightOnSecondaryContainer,
      tertiary: ColorManager.lightTertiary,
      onTertiary: ColorManager.lightOnTertiary,
      tertiaryContainer: ColorManager.lightTertiaryContainer,
      onTertiaryContainer: ColorManager.lightOnTertiaryContainer,
      error: ColorManager.lightError,
      onError: ColorManager.lightOnError,
      errorContainer: ColorManager.lightErrorContainer,
      onErrorContainer: ColorManager.lightOnErrorContainer,
      surface: ColorManager.lightSurface,
      onSurface: ColorManager.lightOnSurface,
      surfaceContainerHighest: ColorManager.lightSurfaceContainerHighest,
      onSurfaceVariant: ColorManager.lightOnSurfaceVariant,
      outline: ColorManager.lightBorder,
      outlineVariant: Color(0xFFE0E0E0),
      shadow: ColorManager.lightShadow,
      scrim: ColorManager.lightScrim,
      inverseSurface: ColorManager.lightInverseSurface,
      onInverseSurface: ColorManager.lightOnInverseSurface,
      inversePrimary: ColorManager.lightInversePrimary,
      surfaceTint: ColorManager.lightSurfaceTint,
    ),

    // ----------------------------------------------------------
    // TEXT THEME
    // ----------------------------------------------------------
    textTheme: TextTheme(
      // Display
      displayLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 57,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightTextPrimary,
        letterSpacing: -0.25,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 45,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightTextPrimary,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 36,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightTextPrimary,
      ),
      // Headline
      headlineLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: ColorManager.lightTextPrimary,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 26,
        fontWeight: FontWeight.w600,
        color: ColorManager.lightTextPrimary,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: ColorManager.lightTextPrimary,
      ),
      // Title
      titleLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: ColorManager.lightTextPrimary,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: ColorManager.lightTextPrimary,
        letterSpacing: 0.15,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: ColorManager.lightTextPrimary,
        letterSpacing: 0.1,
      ),
      // Body
      bodyLarge: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorManager.lightTextPrimary,
        letterSpacing: 0.5,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightTextSecondary,
        letterSpacing: 0.25,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Inter',
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightTextSecondary,
        letterSpacing: 0.4,
      ),
      // Label
      labelLarge: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: ColorManager.lightTextPrimary,
        letterSpacing: 0.1,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: ColorManager.lightTextSecondary,
        letterSpacing: 0.5,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightTextDisabled,
        letterSpacing: 0.5,
      ),
    ),

    // ----------------------------------------------------------
    // APP BAR
    // ----------------------------------------------------------
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.lightAppBar,
      foregroundColor: ColorManager.lightAppBarForeground,
      surfaceTintColor: ColorManager.transparent,
      shadowColor: ColorManager.lightShadow,
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 2,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(
        color: ColorManager.lightAppBarForeground,
        size: 22,
      ),
      actionsIconTheme: IconThemeData(
        color: ColorManager.lightAppBarForeground,
        size: 22,
      ),
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: ColorManager.lightAppBarForeground,
      ),
      toolbarTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorManager.lightAppBarForeground,
      ),
    ),

    // ----------------------------------------------------------
    // ICONS
    // ----------------------------------------------------------
    iconTheme: IconThemeData(color: ColorManager.lightTextPrimary, size: 22),
    primaryIconTheme: IconThemeData(
      color: ColorManager.lightAppBarForeground,
      size: 24,
    ),

    // ----------------------------------------------------------
    // BUTTONS — Elevated
    // ----------------------------------------------------------
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: ColorManager.lightButtonForeground,
        backgroundColor: ColorManager.lightButtonBackground,
        disabledForegroundColor: ColorManager.lightButtonDisabledForeground,
        disabledBackgroundColor: ColorManager.lightButtonDisabledBackground,
        shadowColor: ColorManager.lightShadow,
        elevation: 2,
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.mediumSmall),
        ),
        minimumSize: const Size(64, 48),
      ),
    ),

    // --- Filled ---
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        foregroundColor: ColorManager.lightOnPrimary,
        backgroundColor: ColorManager.lightPrimary,
        disabledForegroundColor: ColorManager.lightButtonDisabledForeground,
        disabledBackgroundColor: ColorManager.lightButtonDisabledBackground,
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
        minimumSize: const Size(64, 48),
      ),
    ),

    // --- Outlined ---
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: ColorManager.lightAppBar,
        backgroundColor: ColorManager.transparent,
        disabledForegroundColor: ColorManager.lightButtonDisabledForeground,
        side: BorderSide(
          color: ColorManager.lightAppBar,
          width: ThicknessSize.t1,
        ),
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.mediumSmall),
        ),
        minimumSize: const Size(64, 48),
      ),
    ),

    // --- Text ---
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: ColorManager.lightTextLink,
        disabledForegroundColor: ColorManager.lightTextDisabled,
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.small),
        ),
      ),
    ),

    // --- Icon Button ---
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        foregroundColor: ColorManager.lightTextPrimary,
        disabledBackgroundColor: ColorManager.lightTextDisabled,

        highlightColor: ColorManager.lightHighlight,
        hoverColor: ColorManager.lightHoverOverlay,
        focusColor: ColorManager.lightFocusOverlay,
        padding: const EdgeInsets.all(8),
      ),
    ),

    // ----------------------------------------------------------
    // CHIPS
    // ----------------------------------------------------------
    chipTheme: ChipThemeData(
      backgroundColor: ColorManager.lightChipBackground,
      selectedColor: ColorManager.lightChipSelected,
      disabledColor: ColorManager.lightButtonDisabledBackground,
      secondarySelectedColor: ColorManager.lightPrimaryContainer,
      deleteIconColor: ColorManager.lightTextSecondary,
      checkmarkColor: ColorManager.lightOnPrimary,
      shadowColor: ColorManager.lightShadow,
      elevation: 0,
      pressElevation: 2,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
      labelStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: ColorManager.lightChipLabel,
      ),
      secondaryLabelStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: ColorManager.lightChipSelectedLabel,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
        side: BorderSide(color: ColorManager.lightBorder),
      ),
    ),

    // ----------------------------------------------------------
    // INPUT FIELDS
    // ----------------------------------------------------------
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorManager.lightCardBackground,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      labelStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 15,
        color: ColorManager.lightTextSecondary,
      ),
      floatingLabelStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 13,
        color: ColorManager.lightPrimary,
      ),
      hintStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 15,
        color: ColorManager.lightTextHint,
      ),
      helperStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: ColorManager.lightTextDisabled,
      ),
      errorStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: ColorManager.lightError,
      ),
      counterStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: ColorManager.lightTextDisabled,
      ),
      prefixStyle: TextStyle(color: ColorManager.lightTextSecondary),
      suffixStyle: TextStyle(color: ColorManager.lightTextSecondary),
      iconColor: ColorManager.lightTextSecondary,
      prefixIconColor: ColorManager.lightTextSecondary,
      suffixIconColor: ColorManager.lightTextSecondary,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.lightBorder,
          width: ThicknessSize.t1,
        ),
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.lightBorderFocused,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.lightBorderError,
          width: ThicknessSize.t1,
        ),
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.lightBorderError,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFE8E8E8),
          width: ThicknessSize.t1,
        ),
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
    ),

    // ----------------------------------------------------------
    // CARD
    // ----------------------------------------------------------
    cardTheme: CardThemeData(
      color: ColorManager.lightCardBackground,
      shadowColor: ColorManager.lightShadow,
      surfaceTintColor: ColorManager.transparent,
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
        side: BorderSide(
          color: ColorManager.lightBorder,
          width: ThicknessSize.t1,
        ),
      ),
      clipBehavior: Clip.antiAlias,
    ),

    // ----------------------------------------------------------
    // DIALOG
    // ----------------------------------------------------------
    dialogTheme: DialogThemeData(
      backgroundColor: ColorManager.lightDialogBackground,
      surfaceTintColor: ColorManager.transparent,
      shadowColor: ColorManager.lightShadow,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: ColorManager.lightTextPrimary,
      ),
      contentTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightTextSecondary,
      ),
    ),

    // ----------------------------------------------------------
    // BOTTOM SHEET
    // ----------------------------------------------------------
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: ColorManager.lightSheetBackground,
      surfaceTintColor: ColorManager.transparent,
      shadowColor: ColorManager.lightShadow,
      elevation: 8,
      modalElevation: 16,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppRadius.large),
        ),
      ),
      showDragHandle: true,
      dragHandleColor: ColorManager.lightTextDisabled,
      dragHandleSize: const Size(40, 4),
      clipBehavior: Clip.antiAlias,
    ),

    // ----------------------------------------------------------
    // SNACK BAR
    // ----------------------------------------------------------
    snackBarTheme: SnackBarThemeData(
      backgroundColor: ColorManager.lightSnackbarBackground,
      contentTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightSnackbarText,
      ),
      actionTextColor: ColorManager.lightSnackbarAction,
      disabledActionTextColor: ColorManager.lightTextDisabled,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.small),
      ),
      behavior: SnackBarBehavior.floating,
    ),

    // ----------------------------------------------------------
    // NAVIGATION BAR (bottom)
    // ----------------------------------------------------------
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: ColorManager.lightNavBackground,
      surfaceTintColor: ColorManager.transparent,
      shadowColor: ColorManager.lightShadow,
      elevation: 4,
      height: 64,
      indicatorColor: ColorManager.lightNavIndicator,
      indicatorShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(color: ColorManager.lightNavSelected, size: 24);
        }
        return IconThemeData(color: ColorManager.lightNavUnselected, size: 22);
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: ColorManager.lightNavSelected,
          );
        }
        return TextStyle(
          fontFamily: 'Inter',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: ColorManager.lightNavUnselected,
        );
      }),
    ),

    // ----------------------------------------------------------
    // NAVIGATION RAIL
    // ----------------------------------------------------------
    navigationRailTheme: NavigationRailThemeData(
      backgroundColor: ColorManager.lightNavBackground,
      elevation: 2,
      selectedIconTheme: IconThemeData(
        color: ColorManager.lightNavSelected,
        size: 24,
      ),
      unselectedIconTheme: IconThemeData(
        color: ColorManager.lightNavUnselected,
        size: 22,
      ),
      selectedLabelTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: ColorManager.lightNavSelected,
      ),
      unselectedLabelTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightNavUnselected,
      ),
      indicatorColor: ColorManager.lightNavIndicator,
      indicatorShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      useIndicator: true,
    ),

    // ----------------------------------------------------------
    // TAB BAR
    // ----------------------------------------------------------
    tabBarTheme: TabBarThemeData(
      labelColor: ColorManager.lightTabSelected,
      unselectedLabelColor: ColorManager.lightTabUnselected,
      indicatorColor: ColorManager.lightTabIndicator,
      indicatorSize: TabBarIndicatorSize.tab,
      dividerColor: ColorManager.lightBorder,
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return ColorManager.lightPressedOverlay;
        }
        if (states.contains(WidgetState.hovered)) {
          return ColorManager.lightHoverOverlay;
        }
        return null;
      }),
      labelStyle: const TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: const TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
    ),

    // ----------------------------------------------------------
    // DIVIDERS
    // ----------------------------------------------------------
    dividerTheme: DividerThemeData(
      color: ColorManager.lightDivider,
      thickness: ThicknessSize.t1,
      space: 1,
      indent: 0,
      endIndent: 0,
    ),

    // ----------------------------------------------------------
    // LIST TILE
    // ----------------------------------------------------------
    listTileTheme: ListTileThemeData(
      tileColor: ColorManager.transparent,
      selectedTileColor: ColorManager.lightHighlight,
      iconColor: ColorManager.lightTextSecondary,
      textColor: ColorManager.lightTextPrimary,
      selectedColor: ColorManager.lightPrimary,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.small),
      ),
      enableFeedback: true,
      dense: false,
      titleTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: ColorManager.lightTextPrimary,
      ),
      subtitleTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightTextSecondary,
      ),
      leadingAndTrailingTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: ColorManager.lightTextDisabled,
      ),
    ),

    // ----------------------------------------------------------
    // SWITCH
    // ----------------------------------------------------------
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.lightSwitchThumb;
        }
        if (states.contains(WidgetState.disabled)) {
          return ColorManager.lightTextDisabled;
        }
        return ColorManager.lightSwitchThumb;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.lightSwitchActive;
        }
        if (states.contains(WidgetState.disabled)) {
          return ColorManager.lightButtonDisabledBackground;
        }
        return ColorManager.lightSwitchInactive;
      }),
      trackOutlineColor: WidgetStateProperty.all(ColorManager.transparent),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return ColorManager.lightPressedOverlay;
        }
        if (states.contains(WidgetState.hovered)) {
          return ColorManager.lightHoverOverlay;
        }
        return ColorManager.transparent;
      }),
    ),

    // ----------------------------------------------------------
    // CHECKBOX
    // ----------------------------------------------------------
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.lightCheckboxFill;
        }
        if (states.contains(WidgetState.disabled)) {
          return ColorManager.lightTextDisabled;
        }
        return ColorManager.transparent;
      }),
      checkColor: WidgetStateProperty.all(ColorManager.lightOnPrimary),
      side: BorderSide(color: ColorManager.lightCheckboxBorder, width: 1.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return ColorManager.lightPressedOverlay;
        }
        if (states.contains(WidgetState.hovered)) {
          return ColorManager.lightHoverOverlay;
        }
        return ColorManager.transparent;
      }),
    ),

    // ----------------------------------------------------------
    // RADIO
    // ----------------------------------------------------------
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.lightRadioActive;
        }
        if (states.contains(WidgetState.disabled)) {
          return ColorManager.lightTextDisabled;
        }
        return ColorManager.lightTextSecondary;
      }),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return ColorManager.lightPressedOverlay;
        }
        if (states.contains(WidgetState.hovered)) {
          return ColorManager.lightHoverOverlay;
        }
        return ColorManager.transparent;
      }),
    ),

    // ----------------------------------------------------------
    // SLIDER
    // ----------------------------------------------------------
    sliderTheme: SliderThemeData(
      activeTrackColor: ColorManager.lightSliderActive,
      inactiveTrackColor: ColorManager.lightSliderInactive,
      thumbColor: ColorManager.lightSliderThumb,
      overlayColor: ColorManager.lightFocusOverlay,
      valueIndicatorColor: ColorManager.lightPrimaryContainer,
      valueIndicatorTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: ColorManager.lightOnPrimaryContainer,
      ),
      trackHeight: 4,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 20),
    ),

    // ----------------------------------------------------------
    // PROGRESS INDICATOR
    // ----------------------------------------------------------
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: ColorManager.lightProgressFill,
      linearTrackColor: ColorManager.lightProgressTrack,
      circularTrackColor: ColorManager.lightProgressTrack,
      linearMinHeight: 4,
      refreshBackgroundColor: ColorManager.lightCardBackground,
    ),

    // ----------------------------------------------------------
    // POPUP MENU
    // ----------------------------------------------------------
    popupMenuTheme: PopupMenuThemeData(
      color: ColorManager.lightCardBackground,
      surfaceTintColor: ColorManager.transparent,
      shadowColor: ColorManager.lightShadow,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
        side: BorderSide(color: ColorManager.lightBorder),
      ),
      textStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: ColorManager.lightTextPrimary,
      ),
      labelTextStyle: WidgetStateProperty.all(
        TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: ColorManager.lightTextPrimary,
        ),
      ),
    ),

    // ----------------------------------------------------------
    // DROPDOWN
    // ----------------------------------------------------------
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 15,
        color: ColorManager.lightTextPrimary,
      ),
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(
          ColorManager.lightCardBackground,
        ),
        surfaceTintColor: WidgetStateProperty.all(ColorManager.transparent),
        shadowColor: WidgetStateProperty.all(ColorManager.lightShadow),
        elevation: WidgetStateProperty.all(4),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.medium),
            side: BorderSide(color: ColorManager.lightBorder),
          ),
        ),
      ),
    ),

    // ----------------------------------------------------------
    // TOOLTIP
    // ----------------------------------------------------------
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: ColorManager.lightSurfaceContainerHighest,
        borderRadius: BorderRadius.circular(AppRadius.small),
        border: Border.all(color: ColorManager.lightBorder),
        boxShadow: [
          BoxShadow(
            color: ColorManager.lightShadow,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      textStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: ColorManager.lightTextPrimary,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      margin: const EdgeInsets.all(4),
      waitDuration: const Duration(milliseconds: 500),
      showDuration: const Duration(seconds: 2),
    ),

    // ----------------------------------------------------------
    // FLOATING ACTION BUTTON
    // ----------------------------------------------------------
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorManager.lightAppBar,
      foregroundColor: ColorManager.lightAppBarForeground,
      focusColor: ColorManager.lightFocusOverlay,
      hoverColor: ColorManager.lightHoverOverlay,
      splashColor: ColorManager.lightSplash,
      elevation: 4,
      focusElevation: 6,
      hoverElevation: 6,
      highlightElevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
    ),

    // ----------------------------------------------------------
    // SEARCH BAR
    // ----------------------------------------------------------
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(
        ColorManager.lightCardBackground,
      ),
      shadowColor: WidgetStateProperty.all(ColorManager.lightShadow),
      surfaceTintColor: WidgetStateProperty.all(ColorManager.transparent),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return ColorManager.lightPressedOverlay;
        }
        if (states.contains(WidgetState.hovered)) {
          return ColorManager.lightHoverOverlay;
        }
        return null;
      }),
      side: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return BorderSide(color: ColorManager.lightBorderFocused, width: 1.5);
        }
        return BorderSide(color: ColorManager.lightBorder);
      }),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
      ),
      textStyle: WidgetStateProperty.all(
        TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          color: ColorManager.lightTextPrimary,
        ),
      ),
      hintStyle: WidgetStateProperty.all(
        TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          color: ColorManager.lightTextHint,
        ),
      ),
      elevation: WidgetStateProperty.all(2),
    ),

    // ----------------------------------------------------------
    // EXPANSION TILE
    // ----------------------------------------------------------
    expansionTileTheme: ExpansionTileThemeData(
      backgroundColor: ColorManager.lightCardBackground,
      collapsedBackgroundColor: ColorManager.lightCardBackground,
      iconColor: ColorManager.lightPrimary,
      collapsedIconColor: ColorManager.lightTextSecondary,
      textColor: ColorManager.lightTextPrimary,
      collapsedTextColor: ColorManager.lightTextPrimary,
      childrenPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    ),

    // ----------------------------------------------------------
    // DRAWER
    // ----------------------------------------------------------
    drawerTheme: DrawerThemeData(
      backgroundColor: ColorManager.lightNavBackground,
      shadowColor: ColorManager.lightShadow,
      surfaceTintColor: ColorManager.transparent,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(AppRadius.large),
        ),
      ),
    ),

    // ----------------------------------------------------------
    // BADGE
    // ----------------------------------------------------------
    badgeTheme: BadgeThemeData(
      backgroundColor: ColorManager.lightError,
      textColor: ColorManager.lightOnError,
      textStyle: const TextStyle(
        fontFamily: 'Inter',
        fontSize: 10,
        fontWeight: FontWeight.w700,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      smallSize: 8,
      largeSize: 20,
    ),

    // ----------------------------------------------------------
    // DATE PICKER
    // ----------------------------------------------------------
    datePickerTheme: DatePickerThemeData(
      backgroundColor: ColorManager.lightDialogBackground,
      surfaceTintColor: ColorManager.transparent,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
      headerBackgroundColor: ColorManager.lightAppBar,
      headerForegroundColor: ColorManager.lightAppBarForeground,
      dayStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 13,
        color: ColorManager.lightTextPrimary,
      ),
      yearStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 13,
        color: ColorManager.lightTextPrimary,
      ),
      dayForegroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.lightOnPrimary;
        }
        if (states.contains(WidgetState.disabled)) {
          return ColorManager.lightTextDisabled;
        }
        return ColorManager.lightTextPrimary;
      }),
      dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.lightPrimary;
        }
        return ColorManager.transparent;
      }),
      todayForegroundColor: WidgetStateProperty.all(ColorManager.lightAppBar),
      todayBackgroundColor: WidgetStateProperty.all(
        ColorManager.lightFocusOverlay,
      ),
      todayBorder: BorderSide(color: ColorManager.lightAppBar),
    ),

    // ----------------------------------------------------------
    // TIME PICKER
    // ----------------------------------------------------------
    timePickerTheme: TimePickerThemeData(
      backgroundColor: ColorManager.lightDialogBackground,
      dialBackgroundColor: ColorManager.lightSurfaceContainerHighest,
      dialHandColor: ColorManager.lightAppBar,
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.lightOnPrimary;
        }
        return ColorManager.lightTextPrimary;
      }),
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.lightPrimaryContainer;
        }
        return ColorManager.lightSurfaceContainerHighest;
      }),
      hourMinuteTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.lightOnPrimaryContainer;
        }
        return ColorManager.lightTextPrimary;
      }),
      dayPeriodColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.lightPrimaryContainer;
        }
        return ColorManager.lightSurfaceContainerHighest;
      }),
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.lightOnPrimaryContainer;
        }
        return ColorManager.lightTextPrimary;
      }),
      entryModeIconColor: ColorManager.lightTextSecondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
    ),

    // ----------------------------------------------------------
    // SEGMENTED BUTTON
    // ----------------------------------------------------------
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: SegmentedButton.styleFrom(
        backgroundColor: ColorManager.lightSurfaceVariant,
        foregroundColor: ColorManager.lightTextSecondary,
        selectedForegroundColor: ColorManager.lightAppBar,
        selectedBackgroundColor: ColorManager.lightSecondaryContainer,
        disabledForegroundColor: ColorManager.lightButtonDisabledForeground,
        disabledBackgroundColor: ColorManager.lightButtonDisabledBackground,
        side: BorderSide(color: ColorManager.lightBorder),
        textStyle: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      ),
    ),
  );
}
