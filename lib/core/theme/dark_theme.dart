import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:finio/core/constants/app_radius.dart';
import 'package:finio/core/constants/app_thickness.dart';
import 'package:finio/core/theme/app_color_schemes.dart';

ThemeData getDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    // ----------------------------------------------------------
    // BASE COLORS
    // ----------------------------------------------------------
    scaffoldBackgroundColor: ColorManager.darkBackground,
    canvasColor: ColorManager.darkCanvasColor,
    cardColor: ColorManager.darkCardBackground,
    dividerColor: ColorManager.darkDivider,
    shadowColor: ColorManager.darkShadow,
    highlightColor: ColorManager.darkHighlight,
    hoverColor: ColorManager.darkHoverOverlay,
    focusColor: ColorManager.darkFocusOverlay,
    splashColor: ColorManager.darkSplash,
    disabledColor: ColorManager.darkTextDisabled,
    hintColor: ColorManager.darkTextHint,
    unselectedWidgetColor: ColorManager.darkTextDisabled,

    // ----------------------------------------------------------
    // COLOR SCHEME
    // ----------------------------------------------------------
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: ColorManager.darkPrimary,
      onPrimary: ColorManager.darkOnPrimary,
      primaryContainer: ColorManager.darkPrimaryContainer,
      onPrimaryContainer: ColorManager.darkOnPrimaryContainer,
      secondary: ColorManager.darkSecondary,
      onSecondary: ColorManager.darkOnSecondary,
      secondaryContainer: ColorManager.darkSecondaryContainer,
      onSecondaryContainer: ColorManager.darkOnSecondaryContainer,
      tertiary: ColorManager.darkTertiary,
      onTertiary: ColorManager.darkOnTertiary,
      tertiaryContainer: ColorManager.darkTertiaryContainer,
      onTertiaryContainer: ColorManager.darkOnTertiaryContainer,
      error: ColorManager.darkError,
      onError: ColorManager.darkOnError,
      errorContainer: ColorManager.darkErrorContainer,
      onErrorContainer: ColorManager.darkOnErrorContainer,
      surface: ColorManager.darkSurface,
      onSurface: ColorManager.darkOnSurface,
      surfaceContainerHighest: ColorManager.darkSurfaceContainerHighest,
      onSurfaceVariant: ColorManager.darkOnSurfaceVariant,
      outline: ColorManager.darkBorder,
      outlineVariant: Color(0xFF3A3A3A),
      shadow: ColorManager.darkShadow,
      scrim: ColorManager.darkScrim,
      inverseSurface: ColorManager.darkInverseSurface,
      onInverseSurface: ColorManager.darkOnInverseSurface,
      inversePrimary: ColorManager.darkInversePrimary,
      surfaceTint: ColorManager.darkSurfaceTint,
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
        color: ColorManager.darkTextPrimary,
        letterSpacing: -0.25,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 45,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkTextPrimary,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 36,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkTextPrimary,
      ),
      // Headline
      headlineLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 30,
        fontWeight: FontWeight.w600,
        color: ColorManager.darkTextPrimary,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 26,
        fontWeight: FontWeight.w600,
        color: ColorManager.darkTextPrimary,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: ColorManager.darkTextPrimary,
      ),
      // Title
      titleLarge: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: ColorManager.darkTextPrimary,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: ColorManager.darkTextPrimary,
        letterSpacing: 0.15,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: ColorManager.darkTextPrimary,
        letterSpacing: 0.1,
      ),
      // Body
      bodyLarge: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorManager.darkTextPrimary,
        letterSpacing: 0.5,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkTextSecondary,
        letterSpacing: 0.25,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Inter',
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkTextSecondary,
        letterSpacing: 0.4,
      ),
      // Label
      labelLarge: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: ColorManager.darkTextPrimary,
        letterSpacing: 0.1,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Inter',
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: ColorManager.darkTextSecondary,
        letterSpacing: 0.5,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkTextDisabled,
        letterSpacing: 0.5,
      ),
    ),

    // ----------------------------------------------------------
    // APP BAR
    // ----------------------------------------------------------
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.darkAppBar,
      foregroundColor: ColorManager.darkAppBarForeground,
      surfaceTintColor: ColorManager.transparent,
      shadowColor: ColorManager.darkShadow,
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 2,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: ColorManager.darkAppBarForeground,
        size: 22,
      ),
      actionsIconTheme: IconThemeData(
        color: ColorManager.darkAppBarForeground,
        size: 22,
      ),
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: ColorManager.darkAppBarForeground,
      ),
      toolbarTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: ColorManager.darkTextSecondary,
      ),
    ),

    // ----------------------------------------------------------
    // ICONS
    // ----------------------------------------------------------
    iconTheme: IconThemeData(color: ColorManager.darkPrimary, size: 22),
    primaryIconTheme: IconThemeData(color: ColorManager.darkPrimary, size: 24),

    // ----------------------------------------------------------
    // BUTTONS — Elevated
    // ----------------------------------------------------------
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: ColorManager.darkButtonForeground,
        backgroundColor: ColorManager.darkButtonBackground,
        disabledForegroundColor: ColorManager.darkButtonDisabledForeground,
        disabledBackgroundColor: ColorManager.darkButtonDisabledBackground,
        shadowColor: ColorManager.darkShadow,
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
        foregroundColor: ColorManager.darkOnPrimary,
        backgroundColor: ColorManager.darkPrimary,
        disabledForegroundColor: ColorManager.darkButtonDisabledForeground,
        disabledBackgroundColor: ColorManager.darkButtonDisabledBackground,
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
        foregroundColor: ColorManager.darkPrimary,
        backgroundColor: ColorManager.transparent,
        disabledForegroundColor: ColorManager.darkButtonDisabledForeground,
        side: BorderSide(
          color: ColorManager.darkBorder,
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
        foregroundColor: ColorManager.darkPrimary,
        disabledForegroundColor: ColorManager.darkTextDisabled,
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
        foregroundColor: ColorManager.darkPrimary,
        disabledBackgroundColor: ColorManager.darkTextDisabled,
        highlightColor: ColorManager.darkHighlight,
        hoverColor: ColorManager.darkHoverOverlay,
        focusColor: ColorManager.darkFocusOverlay,
        padding: const EdgeInsets.all(8),
      ),
    ),

    // ----------------------------------------------------------
    // CHIPS
    // ----------------------------------------------------------
    chipTheme: ChipThemeData(
      backgroundColor: ColorManager.darkChipBackground,
      selectedColor: ColorManager.darkChipSelected,
      disabledColor: ColorManager.darkButtonDisabledBackground,
      secondarySelectedColor: ColorManager.darkPrimaryContainer,
      deleteIconColor: ColorManager.darkTextSecondary,
      checkmarkColor: ColorManager.darkOnPrimary,
      shadowColor: ColorManager.darkShadow,
      elevation: 0,
      pressElevation: 2,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      labelPadding: const EdgeInsets.symmetric(horizontal: 4),
      labelStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: ColorManager.darkChipLabel,
      ),
      secondaryLabelStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: ColorManager.darkChipSelectedLabel,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
        side: BorderSide(color: ColorManager.darkBorder),
      ),
    ),

    // ----------------------------------------------------------
    // INPUT FIELDS
    // ----------------------------------------------------------
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorManager.darkCardBackground,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      labelStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 15,
        color: ColorManager.darkTextSecondary,
      ),
      floatingLabelStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 13,
        color: ColorManager.darkPrimary,
      ),
      hintStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 15,
        color: ColorManager.darkTextHint,
      ),
      helperStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: ColorManager.darkTextDisabled,
      ),
      errorStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: ColorManager.darkError,
      ),
      counterStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: ColorManager.darkTextDisabled,
      ),
      prefixStyle: TextStyle(color: ColorManager.darkTextSecondary),
      suffixStyle: TextStyle(color: ColorManager.darkTextSecondary),
      iconColor: ColorManager.darkTextSecondary,
      prefixIconColor: ColorManager.darkTextSecondary,
      suffixIconColor: ColorManager.darkTextSecondary,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.darkBorder,
          width: ThicknessSize.t1,
        ),
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.darkBorderFocused,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.darkBorderError,
          width: ThicknessSize.t1,
        ),
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.darkBorderError, width: 1.5),
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFF252525),
          width: ThicknessSize.t1,
        ),
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
    ),

    // ----------------------------------------------------------
    // CARD
    // ----------------------------------------------------------
    cardTheme: CardThemeData(
      color: ColorManager.darkCardBackground,
      shadowColor: ColorManager.darkShadow,
      surfaceTintColor: ColorManager.transparent,
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
        side: BorderSide(
          color: ColorManager.darkBorder,
          width: ThicknessSize.t1,
        ),
      ),
      clipBehavior: Clip.antiAlias,
    ),

    // ----------------------------------------------------------
    // DIALOG
    // ----------------------------------------------------------
    dialogTheme: DialogThemeData(
      backgroundColor: ColorManager.darkDialogBackground,
      surfaceTintColor: ColorManager.transparent,
      shadowColor: ColorManager.darkShadow,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: ColorManager.darkTextPrimary,
      ),
      contentTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkTextSecondary,
      ),
    ),

    // ----------------------------------------------------------
    // BOTTOM SHEET
    // ----------------------------------------------------------
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: ColorManager.darkSheetBackground,
      surfaceTintColor: ColorManager.transparent,
      shadowColor: ColorManager.darkShadow,
      elevation: 8,
      modalElevation: 16,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppRadius.large),
        ),
      ),
      showDragHandle: true,
      dragHandleColor: ColorManager.darkTextDisabled,
      dragHandleSize: const Size(40, 4),
      clipBehavior: Clip.antiAlias,
    ),

    // ----------------------------------------------------------
    // SNACK BAR
    // ----------------------------------------------------------
    snackBarTheme: SnackBarThemeData(
      backgroundColor: ColorManager.darkSnackbarBackground,
      contentTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkSnackbarText,
      ),
      actionTextColor: ColorManager.darkSnackbarAction,
      disabledActionTextColor: ColorManager.darkTextDisabled,
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
      backgroundColor: ColorManager.darkNavBackground,
      surfaceTintColor: ColorManager.transparent,
      shadowColor: ColorManager.darkShadow,
      elevation: 4,
      height: 64,
      indicatorColor: ColorManager.darkNavIndicator,
      indicatorShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(color: ColorManager.darkNavSelected, size: 24);
        }
        return IconThemeData(color: ColorManager.darkNavUnselected, size: 22);
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyle(
            fontFamily: 'Inter',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: ColorManager.darkNavSelected,
          );
        }
        return TextStyle(
          fontFamily: 'Inter',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: ColorManager.darkNavUnselected,
        );
      }),
    ),

    // ----------------------------------------------------------
    // NAVIGATION RAIL
    // ----------------------------------------------------------
    navigationRailTheme: NavigationRailThemeData(
      backgroundColor: ColorManager.darkNavBackground,
      elevation: 2,
      selectedIconTheme: IconThemeData(
        color: ColorManager.darkNavSelected,
        size: 24,
      ),
      unselectedIconTheme: IconThemeData(
        color: ColorManager.darkNavUnselected,
        size: 22,
      ),
      selectedLabelTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: ColorManager.darkNavSelected,
      ),
      unselectedLabelTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkNavUnselected,
      ),
      indicatorColor: ColorManager.darkNavIndicator,
      indicatorShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
      ),
      useIndicator: true,
    ),

    // ----------------------------------------------------------
    // TAB BAR
    // ----------------------------------------------------------
    tabBarTheme: TabBarThemeData(
      labelColor: ColorManager.darkTabSelected,
      unselectedLabelColor: ColorManager.darkTabUnselected,
      indicatorColor: ColorManager.darkTabIndicator,
      indicatorSize: TabBarIndicatorSize.tab,
      dividerColor: ColorManager.darkBorder,
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return ColorManager.darkPressedOverlay;
        }

        if (states.contains(WidgetState.hovered)) {
          return ColorManager.darkHoverOverlay;
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
      color: ColorManager.darkDivider,
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
      selectedTileColor: ColorManager.darkHighlight,
      iconColor: ColorManager.darkTextSecondary,
      textColor: ColorManager.darkTextPrimary,
      selectedColor: ColorManager.darkPrimary,
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
        color: ColorManager.darkTextPrimary,
      ),
      subtitleTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkTextSecondary,
      ),
      leadingAndTrailingTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: ColorManager.darkTextDisabled,
      ),
    ),

    // ----------------------------------------------------------
    // SWITCH
    // ----------------------------------------------------------
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.darkSwitchThumb;
        }
        if (states.contains(WidgetState.disabled)) {
          return ColorManager.darkTextDisabled;
        }
        return ColorManager.darkSwitchThumb;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.darkSwitchActive;
        }
        if (states.contains(WidgetState.disabled)) {
          return ColorManager.darkButtonDisabledBackground;
        }
        return ColorManager.darkSwitchInactive;
      }),
      trackOutlineColor: WidgetStateProperty.all(ColorManager.transparent),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return ColorManager.darkPressedOverlay;
        }
        if (states.contains(WidgetState.hovered)) {
          return ColorManager.darkHoverOverlay;
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
          return ColorManager.darkCheckboxFill;
        }
        if (states.contains(WidgetState.disabled)) {
          return ColorManager.darkTextDisabled;
        }
        return ColorManager.transparent;
      }),
      checkColor: WidgetStateProperty.all(ColorManager.darkOnPrimary),
      side: BorderSide(color: ColorManager.darkCheckboxBorder, width: 1.5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return ColorManager.darkPressedOverlay;
        }
        if (states.contains(WidgetState.hovered)) {
          return ColorManager.darkHoverOverlay;
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
          return ColorManager.darkRadioActive;
        }
        if (states.contains(WidgetState.disabled)) {
          return ColorManager.darkTextDisabled;
        }
        return ColorManager.darkTextSecondary;
      }),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return ColorManager.darkPressedOverlay;
        }
        if (states.contains(WidgetState.hovered)) {
          return ColorManager.darkHoverOverlay;
        }
        return ColorManager.transparent;
      }),
    ),

    // ----------------------------------------------------------
    // SLIDER
    // ----------------------------------------------------------
    sliderTheme: SliderThemeData(
      activeTrackColor: ColorManager.darkSliderActive,
      inactiveTrackColor: ColorManager.darkSliderInactive,
      thumbColor: ColorManager.darkSliderThumb,
      overlayColor: ColorManager.darkFocusOverlay,
      valueIndicatorColor: ColorManager.darkPrimaryContainer,
      valueIndicatorTextStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: ColorManager.darkOnPrimaryContainer,
      ),
      trackHeight: 4,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 10),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 20),
    ),

    // ----------------------------------------------------------
    // PROGRESS INDICATOR
    // ----------------------------------------------------------
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: ColorManager.darkProgressFill,
      linearTrackColor: ColorManager.darkProgressTrack,
      circularTrackColor: ColorManager.darkProgressTrack,
      linearMinHeight: 4,
      refreshBackgroundColor: ColorManager.darkCardBackground,
    ),

    // ----------------------------------------------------------
    // POPUP MENU
    // ----------------------------------------------------------
    popupMenuTheme: PopupMenuThemeData(
      color: ColorManager.darkCardBackground,
      surfaceTintColor: ColorManager.transparent,
      shadowColor: ColorManager.darkShadow,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.medium),
        side: BorderSide(color: ColorManager.darkBorder),
      ),
      textStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: ColorManager.darkTextPrimary,
      ),
      labelTextStyle: WidgetStateProperty.all(
        TextStyle(
          fontFamily: 'Inter',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: ColorManager.darkTextPrimary,
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
        color: ColorManager.darkTextPrimary,
      ),
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(
          ColorManager.darkCardBackground,
        ),
        surfaceTintColor: WidgetStateProperty.all(ColorManager.transparent),
        shadowColor: WidgetStateProperty.all(ColorManager.darkShadow),
        elevation: WidgetStateProperty.all(4),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.medium),
            side: BorderSide(color: ColorManager.darkBorder),
          ),
        ),
      ),
    ),

    // ----------------------------------------------------------
    // TOOLTIP
    // ----------------------------------------------------------
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: ColorManager.darkSurfaceContainerHighest,
        borderRadius: BorderRadius.circular(AppRadius.small),
        border: Border.all(color: ColorManager.darkBorder),
      ),
      textStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 12,
        color: ColorManager.darkTextPrimary,
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
      backgroundColor: ColorManager.darkPrimary,
      foregroundColor: ColorManager.darkOnPrimary,
      focusColor: ColorManager.darkFocusOverlay,
      hoverColor: ColorManager.darkHoverOverlay,
      splashColor: ColorManager.darkSplash,
      elevation: 4,
      focusElevation: 6,
      hoverElevation: 6,
      highlightElevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
    ),

    // ----------------------------------------------------------
    // SEARCH BAR / SEARCH VIEW
    // ----------------------------------------------------------
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(ColorManager.darkCardBackground),
      shadowColor: WidgetStateProperty.all(ColorManager.transparent),
      surfaceTintColor: WidgetStateProperty.all(ColorManager.transparent),
      overlayColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.pressed)) {
          return ColorManager.darkPressedOverlay;
        }
        if (states.contains(WidgetState.hovered)) {
          return ColorManager.darkHoverOverlay;
        }
        return null;
      }),
      side: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.focused)) {
          return BorderSide(color: ColorManager.darkBorderFocused, width: 1.5);
        }
        return BorderSide(color: ColorManager.darkBorder);
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
          color: ColorManager.darkTextPrimary,
        ),
      ),
      hintStyle: WidgetStateProperty.all(
        TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          color: ColorManager.darkTextHint,
        ),
      ),
    ),

    // ----------------------------------------------------------
    // EXPANSION TILE
    // ----------------------------------------------------------
    expansionTileTheme: ExpansionTileThemeData(
      backgroundColor: ColorManager.darkCardBackground,
      collapsedBackgroundColor: ColorManager.darkCardBackground,
      iconColor: ColorManager.darkPrimary,
      collapsedIconColor: ColorManager.darkTextSecondary,
      textColor: ColorManager.darkTextPrimary,
      collapsedTextColor: ColorManager.darkTextPrimary,
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
      backgroundColor: ColorManager.darkNavBackground,
      shadowColor: ColorManager.darkShadow,
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
      backgroundColor: ColorManager.darkError,
      textColor: ColorManager.darkOnError,
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
      backgroundColor: ColorManager.darkDialogBackground,
      surfaceTintColor: ColorManager.transparent,
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
      headerBackgroundColor: ColorManager.darkPrimaryContainer,
      headerForegroundColor: ColorManager.darkOnPrimaryContainer,
      dayStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 13,
        color: ColorManager.darkTextPrimary,
      ),
      yearStyle: TextStyle(
        fontFamily: 'Inter',
        fontSize: 13,
        color: ColorManager.darkTextPrimary,
      ),
      dayForegroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.darkOnPrimary;
        }
        if (states.contains(WidgetState.disabled)) {
          return ColorManager.darkTextDisabled;
        }
        return ColorManager.darkTextPrimary;
      }),
      dayBackgroundColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.darkPrimary;
        }
        return ColorManager.transparent;
      }),
      todayForegroundColor: WidgetStateProperty.all(ColorManager.darkPrimary),
      todayBackgroundColor: WidgetStateProperty.all(
        ColorManager.darkFocusOverlay,
      ),
      todayBorder: BorderSide(color: ColorManager.darkBorderFocused),
    ),

    // ----------------------------------------------------------
    // TIME PICKER
    // ----------------------------------------------------------
    timePickerTheme: TimePickerThemeData(
      backgroundColor: ColorManager.darkDialogBackground,
      dialBackgroundColor: ColorManager.darkSurfaceContainerHighest,
      dialHandColor: ColorManager.darkPrimary,
      dialTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.darkOnPrimary;
        }
        return ColorManager.darkTextPrimary;
      }),
      hourMinuteColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.darkPrimaryContainer;
        }
        return ColorManager.darkSurfaceContainerHighest;
      }),
      hourMinuteTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.darkOnPrimaryContainer;
        }
        return ColorManager.darkTextPrimary;
      }),
      dayPeriodColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.darkPrimaryContainer;
        }
        return ColorManager.darkSurfaceContainerHighest;
      }),
      dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return ColorManager.darkOnPrimaryContainer;
        }
        return ColorManager.darkTextPrimary;
      }),
      entryModeIconColor: ColorManager.darkTextSecondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.large),
      ),
    ),

    // ----------------------------------------------------------
    // SEGMENTED BUTTON
    // ----------------------------------------------------------
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: SegmentedButton.styleFrom(
        backgroundColor: ColorManager.darkSurfaceVariant,
        foregroundColor: ColorManager.darkTextSecondary,
        selectedForegroundColor: ColorManager.darkPrimary,
        selectedBackgroundColor: ColorManager.darkHighlight,
        disabledForegroundColor: ColorManager.darkTextDisabled,
        disabledBackgroundColor: ColorManager.darkButtonDisabledBackground,
        side: BorderSide(color: ColorManager.darkBorder),
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
