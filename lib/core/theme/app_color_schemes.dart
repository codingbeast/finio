import 'package:flutter/material.dart';

/// Central color palette for Finio app.
/// Designed for a premium, modern, and trust-inspiring finance experience.
class ColorManager {
  ColorManager._(); // prevent instantiation

  // ═══════════════════════════════════════════════════════════════
  // SHARED / BRAND
  // ═══════════════════════════════════════════════════════════════
  static const Color fullBlack = Color(0xFF000000);
  static const Color fullWhite = Color(0xFFFFFFFF);
  static const Color transparent = Colors.transparent;

  /// Primary brand Emerald used for trust, growth, and wealth.
  static const Color brandEmerald = Color(0xFF059669);
  static const Color brandEmeraldDark = Color(0xFF047857);
  static const Color brandEmeraldLight = Color(0xFF34D399);
  static const Color brandEmeraldMuted = Color(0xFFD1FAE5);

  // ═══════════════════════════════════════════════════════════════
  // LIGHT THEME
  // ═══════════════════════════════════════════════════════════════

  // --- Scaffold / Canvas ---
  static const Color lightBackground = Color(0xFFF8FAFC); // Slate 50
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightCanvasColor = Color(0xFFF8FAFC);

  // --- AppBar ---
  static const Color lightAppBar = Color(0xFFFFFFFF);
  static const Color lightAppBarForeground = Color(0xFF0F172A);

  // --- Primary ---
  static const Color lightPrimary = Color(0xFF059669);
  static const Color lightPrimaryDark = Color(0xFF047857);
  static const Color lightOnPrimary = Color(0xFFFFFFFF);
  static const Color lightPrimaryContainer = Color(0xFFD1FAE5);
  static const Color lightOnPrimaryContainer = Color(0xFF064E3B);

  // --- Secondary ---
  static const Color lightSecondary = Color(0xFF0F172A); // Slate 900
  static const Color lightOnSecondary = Color(0xFFFFFFFF);
  static const Color lightSecondaryContainer = Color(0xFFE2E8F0);
  static const Color lightOnSecondaryContainer = Color(0xFF0F172A);

  // --- Tertiary ---
  static const Color lightTertiary = Color(0xFF64748B); // Slate 500
  static const Color lightOnTertiary = Color(0xFFFFFFFF);
  static const Color lightTertiaryContainer = Color(0xFFF1F5F9);
  static const Color lightOnTertiaryContainer = Color(0xFF334155);

  // --- Surface / Cards ---
  static const Color lightCardBackground = Color(0xFFFFFFFF);
  static const Color lightSurfaceVariant = Color(0xFFF1F5F9);
  static const Color lightSurfaceContainerHighest = Color(0xFFE2E8F0);
  static const Color lightOnSurface = Color(0xFF0F172A); // Slate 900
  static const Color lightOnSurfaceVariant = Color(0xFF475569); // Slate 600

  // --- Text ---
  static const Color lightTextPrimary = Color(0xFF0F172A);
  static const Color lightTextSecondary = Color(0xFF475569);
  static const Color lightTextDisabled = Color(0xFF94A3B8);
  static const Color lightTextHint = Color(0xFF94A3B8);
  static const Color lightTextInverse = Color(0xFFFFFFFF);
  static const Color lightTextLink = Color(0xFF059669);

  // --- Borders & Dividers ---
  static const Color lightBorder = Color(0xFFE2E8F0);
  static const Color lightBorderFocused = Color(0xFF059669);
  static const Color lightBorderError = Color(0xFFE11D48);
  static const Color lightDivider = Color(0xFFE2E8F0);

  // --- Buttons ---
  static const Color lightButtonBackground = Color(0xFF0F172A);
  static const Color lightButtonForeground = Color(0xFFFFFFFF);
  static const Color lightButtonBackgroundMuted = Color(0xFFF1F5F9);
  static const Color lightButtonForegroundMuted = Color(0xFF0F172A);
  static const Color lightButtonDisabledBackground = Color(0xFFE2E8F0);
  static const Color lightButtonDisabledForeground = Color(0xFF94A3B8);

  // --- Chips ---
  static const Color lightChipBackground = Color(0xFFF8FAFC);
  static const Color lightChipSelected = Color(0xFF0F172A);
  static const Color lightChipLabel = Color(0xFF475569);
  static const Color lightChipSelectedLabel = Color(0xFFFFFFFF);

  // --- States ---
  static const Color lightHighlight = Color(0xFFE2E8F0);
  static const Color lightFocusOverlay = Color(0x1A059669);
  static const Color lightHoverOverlay = Color(0x0D059669);
  static const Color lightPressedOverlay = Color(0x1A0F172A);
  static const Color lightSplash = Color(0x1F059669);

  // --- Semantic (Finance) ---
  static const Color lightError = Color(0xFFE11D48); // Rose - Expense
  static const Color lightOnError = Color(0xFFFFFFFF);
  static const Color lightErrorContainer = Color(0xFFFFE4E6);
  static const Color lightOnErrorContainer = Color(0xFF881337);
  
  static const Color lightSuccess = Color(0xFF10B981); // Emerald - Income
  static const Color lightOnSuccess = Color(0xFFFFFFFF);
  static const Color lightSuccessContainer = Color(0xFFD1FAE5);
  static const Color lightOnSuccessContainer = Color(0xFF065F46);

  static const Color lightWarning = Color(0xFFF59E0B); // Amber
  static const Color lightOnWarning = Color(0xFFFFFFFF);
  static const Color lightWarningContainer = Color(0xFFFEF3C7);
  
  static const Color lightInfo = Color(0xFF3B82F6); // Blue
  static const Color lightInfoContainer = Color(0xFFDBEAFE);

  // --- Misc ---
  static const Color lightShadow = Color(0xFFCBD5E1);
  static const Color lightScrim = Color(0x400F172A);
  static const Color lightInverseSurface = Color(0xFF0F172A);
  static const Color lightOnInverseSurface = Color(0xFFF8FAFC);
  static const Color lightInversePrimary = Color(0xFF34D399);
  static const Color lightSurfaceTint = Color(0xFF059669);

  // --- Navigation ---
  static const Color lightNavBackground = Color(0xFFFFFFFF);
  static const Color lightNavSelected = Color(0xFF059669);
  static const Color lightNavUnselected = Color(0xFF94A3B8);
  static const Color lightNavIndicator = Color(0xFFD1FAE5);

  // --- BottomSheet / Dialog ---
  static const Color lightSheetBackground = Color(0xFFFFFFFF);
  static const Color lightDialogBackground = Color(0xFFFFFFFF);

  // --- Snackbar / Toast ---
  static const Color lightSnackbarBackground = Color(0xFF1E293B);
  static const Color lightSnackbarText = Color(0xFFFFFFFF);
  static const Color lightSnackbarAction = Color(0xFF34D399);

  // --- Progress / Loader ---
  static const Color lightProgressTrack = Color(0xFFE2E8F0);
  static const Color lightProgressFill = Color(0xFF059669);

  // --- Switch / Toggle / Checkbox ---
  static const Color lightSwitchActive = Color(0xFF059669);
  static const Color lightSwitchInactive = Color(0xFFCBD5E1);
  static const Color lightSwitchThumb = Color(0xFFFFFFFF);
  static const Color lightCheckboxFill = Color(0xFF059669);
  static const Color lightCheckboxBorder = Color(0xFFCBD5E1);
  static const Color lightRadioActive = Color(0xFF059669);

  // --- Slider ---
  static const Color lightSliderActive = Color(0xFF059669);
  static const Color lightSliderInactive = Color(0xFFCBD5E1);
  static const Color lightSliderThumb = Color(0xFF059669);

  // --- Tab Bar ---
  static const Color lightTabSelected = Color(0xFF059669);
  static const Color lightTabUnselected = Color(0xFF64748B);
  static const Color lightTabIndicator = Color(0xFF059669);

  // ═══════════════════════════════════════════════════════════════
  // DARK THEME
  // ═══════════════════════════════════════════════════════════════

  // --- Scaffold / Canvas ---
  static const Color darkBackground = Color(0xFF000000); // True OLED Black
  static const Color darkSurface = Color(0xFF0A0A0A); // Very deep grey for surfaces
  static const Color darkCanvasColor = Color(0xFF000000);

  // --- AppBar ---
  static const Color darkAppBar = Color(0xFF000000);
  static const Color darkAppBarForeground = Color(0xFFFFFFFF);

  // --- Primary ---
  static const Color darkPrimary = Color(0xFF10B981); // Emerald 500
  static const Color darkPrimaryDark = Color(0xFF059669);
  static const Color darkOnPrimary = Color(0xFF020617);
  static const Color darkPrimaryContainer = Color(0xFF064E3B); // Emerald 900
  static const Color darkOnPrimaryContainer = Color(0xFFD1FAE5);

  // --- Secondary ---
  static const Color darkSecondary = Color(0xFFFFFFFF); // Clean white accents
  static const Color darkOnSecondary = Color(0xFF000000);
  static const Color darkSecondaryContainer = Color(0xFF262626);
  static const Color darkOnSecondaryContainer = Color(0xFFF3F4F6);

  // --- Tertiary ---
  static const Color darkTertiary = Color(0xFFA3A3A3); // Neutral Gray
  static const Color darkOnTertiary = Color(0xFF000000);
  static const Color darkTertiaryContainer = Color(0xFF171717);
  static const Color darkOnTertiaryContainer = Color(0xFFF3F4F6);

  // --- Surface / Cards ---
  static const Color darkCardBackground = Color(0xFF121212); // Slightly raised grey
  static const Color darkSurfaceVariant = Color(0xFF1A1A1A); 
  static const Color darkSurfaceContainerHighest = Color(0xFF262626); 
  static const Color darkOnSurface = Color(0xFFF3F4F6);
  static const Color darkOnSurfaceVariant = Color(0xFFA3A3A3);

  // --- Text ---
  static const Color darkTextPrimary = Color(0xFFFFFFFF); // Crisp White
  static const Color darkTextSecondary = Color(0xFFA3A3A3); // Neutral Gray
  static const Color darkTextDisabled = Color(0xFF525252);
  static const Color darkTextHint = Color(0xFF525252);
  static const Color darkTextInverse = Color(0xFF000000);
  static const Color darkTextLink = Color(0xFF34D399); // Neon Emerald

  // --- Borders & Dividers ---
  static const Color darkBorder = Color(0xFF262626);
  static const Color darkBorderFocused = Color(0xFF10B981); // Emerald
  static const Color darkBorderError = Color(0xFFF43F5E); // Rose
  static const Color darkDivider = Color(0xFF262626);

  // --- Buttons ---
  static const Color darkButtonBackground = Color(0xFFFFFFFF);
  static const Color darkButtonForeground = Color(0xFF020617);
  static const Color darkButtonBackgroundMuted = Color(0xFF1E293B);
  static const Color darkButtonForegroundMuted = Color(0xFFF8FAFC);
  static const Color darkButtonDisabledBackground = Color(0xFF0F172A);
  static const Color darkButtonDisabledForeground = Color(0xFF475569);

  // --- Chips ---
  static const Color darkChipBackground = Color(0xFF1E293B);
  static const Color darkChipSelected = Color(0xFFFFFFFF);
  static const Color darkChipLabel = Color(0xFFCBD5E1);
  static const Color darkChipSelectedLabel = Color(0xFF020617);

  // --- States ---
  static const Color darkHighlight = Color(0xFF1E293B);
  static const Color darkFocusOverlay = Color(0x1A10B981);
  static const Color darkHoverOverlay = Color(0x0DFFFFFF);
  static const Color darkPressedOverlay = Color(0x1AFFFFFF);
  static const Color darkSplash = Color(0x1A10B981);

  // --- Semantic (Finance) ---
  static const Color darkError = Color(0xFFF43F5E); // Rose 500
  static const Color darkOnError = Color(0xFFFFFFFF);
  static const Color darkErrorContainer = Color(0xFF881337);
  static const Color darkOnErrorContainer = Color(0xFFFFE4E6);
  
  static const Color darkSuccess = Color(0xFF34D399); // Emerald 400
  static const Color darkOnSuccess = Color(0xFF020617);
  static const Color darkSuccessContainer = Color(0xFF064E3B);
  static const Color darkOnSuccessContainer = Color(0xFFD1FAE5);

  static const Color darkWarning = Color(0xFFFBBF24); // Amber 400
  static const Color darkOnWarning = Color(0xFF020617);
  static const Color darkWarningContainer = Color(0xFF78350F);
  
  static const Color darkInfo = Color(0xFF60A5FA); // Blue 400
  static const Color darkInfoContainer = Color(0xFF1E3A8A);

  // --- Misc ---
  static const Color darkShadow = Color(0xFF000000);
  static const Color darkScrim = Color(0x80000000);
  static const Color darkInverseSurface = Color(0xFFF8FAFC);
  static const Color darkOnInverseSurface = Color(0xFF020617);
  static const Color darkInversePrimary = Color(0xFF059669);
  static const Color darkSurfaceTint = Color(0xFF10B981);

  // --- Navigation ---
  static const Color darkNavBackground = Color(0xFF0A0A0A);
  static const Color darkNavSelected = Color(0xFF10B981);
  static const Color darkNavUnselected = Color(0xFFA3A3A3);
  static const Color darkNavIndicator = Color(0xFF1A1A1A);

  // --- BottomSheet / Dialog ---
  static const Color darkSheetBackground = Color(0xFF0A0A0A);
  static const Color darkDialogBackground = Color(0xFF0A0A0A);

  // --- Snackbar / Toast ---
  static const Color darkSnackbarBackground = Color(0xFF1E293B);
  static const Color darkSnackbarText = Color(0xFFF8FAFC);
  static const Color darkSnackbarAction = Color(0xFF34D399);

  // --- Progress / Loader ---
  static const Color darkProgressTrack = Color(0xFF1E293B);
  static const Color darkProgressFill = Color(0xFF10B981);

  // --- Switch / Toggle / Checkbox ---
  static const Color darkSwitchActive = Color(0xFF10B981);
  static const Color darkSwitchInactive = Color(0xFF475569);
  static const Color darkSwitchThumb = Color(0xFFFFFFFF);
  static const Color darkCheckboxFill = Color(0xFF10B981);
  static const Color darkCheckboxBorder = Color(0xFF475569);
  static const Color darkRadioActive = Color(0xFF10B981);

  // --- Slider ---
  static const Color darkSliderActive = Color(0xFF10B981);
  static const Color darkSliderInactive = Color(0xFF475569);
  static const Color darkSliderThumb = Color(0xFF10B981);

  // --- Tab Bar ---
  static const Color darkTabSelected = Color(0xFF10B981);
  static const Color darkTabUnselected = Color(0xFF94A3B8);
  static const Color darkTabIndicator = Color(0xFF10B981);

  // ─── legacy aliases (keep for backward compat) ───────────────
  static Color get buttonBackground => brandEmeraldMuted;
  static Color get fullBlackColor => fullBlack;
  static Color get appBarBackground => lightAppBar;
  static Color get appBarFontColor => lightAppBarForeground;
}
