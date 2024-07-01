import 'package:flutter/material.dart';

import '../colot_extension.dart';

class BaseColor {
  // Design Theme color palette
  static const Color primary50 = Color(0xFFFEFCF9);
  static const Color primary100 = Color(0xFFFDF8EF);
  static const Color primary200 = Color(0xFFFBF4E5);
  static const Color primary300 = Color(0xFFF9EFDB);
  static const Color primary400 = Color(0xFFF8EBD3);
  static final Color primary500 = Color(_materialcolorGrayValue);
  static const Color primary600 = Color(0xFFF6E5C6);
  static const Color primary700 = Color(0xFFF5E2BE);
  static const Color primary800 = Color(0xFFF3DEB8);
  static const Color primary900 = Color(0xFFF1D8AC);

  static final MaterialColor materialcolorGray =
      MaterialColor(_materialcolorGrayValue, <int, Color>{
    50: HexColor.fromHex('#FFFFFF'),
    100: HexColor.fromHex('#F1F5F9'),
    200: HexColor.fromHex('#E2E8F0'),
    300: HexColor.fromHex('#CBD5E1'),
    400: HexColor.fromHex('#94A3B8'),
    500: Color(_materialcolorGrayValue),
    600: HexColor.fromHex('#475569'),
    700: HexColor.fromHex('#334155'),
    800: HexColor.fromHex('#1E293B'),
    900: HexColor.fromHex('#0F172A'),
    1000: HexColor.fromHex('#000000'),
  });
  static final int _materialcolorGrayValue = HexColor.intFromHex('#64748B');

  static final MaterialColor materialcolorBrand =
      MaterialColor(_materialcolorBrandValue, <int, Color>{
    50: HexColor.fromHex('#EEF2FF'),
    100: HexColor.fromHex('#E0E7FF'),
    200: HexColor.fromHex('#C7D2FE'),
    300: HexColor.fromHex('#A5B4FC'),
    400: HexColor.fromHex('#818CF8'),
    500: Color(_materialcolorBrandValue),
    600: HexColor.fromHex('#4F46E5'),
    700: HexColor.fromHex('#4338CA'),
    800: HexColor.fromHex('#3730A3'),
    900: HexColor.fromHex('#312E81'),
  });
  static final int _materialcolorBrandValue = HexColor.intFromHex('#6366F1');

  static final MaterialColor materialcolorDestructive =
      MaterialColor(_materialcolorDestructiveValue, <int, Color>{
    50: HexColor.fromHex('#FFF1F2'),
    100: HexColor.fromHex('#FFE4E6'),
    200: HexColor.fromHex('#FECDD3'),
    300: HexColor.fromHex('#FDA4AF'),
    400: HexColor.fromHex('#FB7185'),
    500: Color(_materialcolorDestructiveValue),
    600: HexColor.fromHex('#E11D48'),
    700: HexColor.fromHex('#BE123C'),
    800: HexColor.fromHex('#9F1239'),
    900: HexColor.fromHex('#881337'),
  });
  static final int _materialcolorDestructiveValue =
      HexColor.intFromHex('#F43F5E');

  static final MaterialColor materialcolorWarning =
      MaterialColor(_materialcolorWarningValue, <int, Color>{
    50: HexColor.fromHex('#FFFBEB'),
    100: HexColor.fromHex('#FEF3C7'),
    200: HexColor.fromHex('#FDE68A'),
    300: HexColor.fromHex('#FCD34D'),
    400: HexColor.fromHex('#FBBF24'),
    500: Color(_materialcolorWarningValue),
    600: HexColor.fromHex('#D97706'),
    700: HexColor.fromHex('#B45309'),
    800: HexColor.fromHex('#92400E'),
    900: HexColor.fromHex('#78350F'),
  });
  static final int _materialcolorWarningValue = HexColor.intFromHex('#F59E0B');

  static final MaterialColor materialcolorSuccess =
      MaterialColor(_materialcolorSuccessValue, <int, Color>{
    50: HexColor.fromHex('#F0FDF4'),
    100: HexColor.fromHex('#DCFCE7'),
    200: HexColor.fromHex('#BBF7D0'),
    300: HexColor.fromHex('#86EFAC'),
    400: HexColor.fromHex('#4ADE80'),
    500: Color(_materialcolorSuccessValue),
    600: HexColor.fromHex('#16A34A'),
    700: HexColor.fromHex('#15803D'),
    800: HexColor.fromHex('#166534'),
    900: HexColor.fromHex('#14532D'),
  });
  static final int _materialcolorSuccessValue = HexColor.intFromHex('#22C55E');

  static final MaterialColor materialcolorBlue =
      MaterialColor(_materialcolorBlueValue, <int, Color>{
    50: HexColor.fromHex('#EFF6FF'),
    100: HexColor.fromHex('#DBEAFE'),
    200: HexColor.fromHex('#BFDBFE'),
    300: HexColor.fromHex('#93C5FD'),
    400: HexColor.fromHex('#60A5FA'),
    500: Color(_materialcolorBlueValue),
    600: HexColor.fromHex('#2563EB'),
    700: HexColor.fromHex('#1D4ED8'),
    800: HexColor.fromHex('#1E40AF'),
    900: HexColor.fromHex('#1E3A8A'),
  });
  static final int _materialcolorBlueValue = HexColor.intFromHex('#3B82F6');

  static final MaterialColor materialcolorCyan =
      MaterialColor(_materialcolorCyanValue, <int, Color>{
    50: HexColor.fromHex('#ECFEFF'),
    100: HexColor.fromHex('#CFFAFE'),
    200: HexColor.fromHex('#A5F3FC'),
    300: HexColor.fromHex('#67E8F9'),
    400: HexColor.fromHex('#22D3EE'),
    500: Color(_materialcolorCyanValue),
    600: HexColor.fromHex('#0891B2'),
    700: HexColor.fromHex('#0E7490'),
    800: HexColor.fromHex('#155E75'),
    900: HexColor.fromHex('#164E63'),
  });
  static final int _materialcolorCyanValue = HexColor.intFromHex('#06B6D4');

  static final MaterialColor materialcolorTeal =
      MaterialColor(_materialcolorTealValue, <int, Color>{
    50: HexColor.fromHex('#F0FDFA'),
    100: HexColor.fromHex('#CCFBF1'),
    200: HexColor.fromHex('#99F6E4'),
    300: HexColor.fromHex('#5EEAD4'),
    400: HexColor.fromHex('#2DD4BF'),
    500: Color(_materialcolorTealValue),
    600: HexColor.fromHex('#0D9488'),
    700: HexColor.fromHex('#0F766E'),
    800: HexColor.fromHex('#115E59'),
    900: HexColor.fromHex('#134E4A'),
  });
  static final int _materialcolorTealValue = HexColor.intFromHex('#14B8A6');

  static final MaterialColor materialcolorPurple =
      MaterialColor(_materialcolorPurpleValue, <int, Color>{
    50: HexColor.fromHex('#FAF5FF'),
    100: HexColor.fromHex('#F3E8FF'),
    200: HexColor.fromHex('#E9D5FF'),
    300: HexColor.fromHex('#D8B4FE'),
    400: HexColor.fromHex('#C084FC'),
    500: Color(_materialcolorPurpleValue),
    600: HexColor.fromHex('#9333EA'),
    700: HexColor.fromHex('#7E22CE'),
    800: HexColor.fromHex('#6B21A8'),
    900: HexColor.fromHex('#581C87'),
  });
  static final int _materialcolorPurpleValue = HexColor.intFromHex('#A855F7');

  static final MaterialColor materialcolorPink =
      MaterialColor(_materialcolorPinkValue, <int, Color>{
    50: HexColor.fromHex('#FDF2F8'),
    100: HexColor.fromHex('#FDF2F8'),
    200: HexColor.fromHex('#FBCFE8'),
    300: HexColor.fromHex('#F9A8D4'),
    400: HexColor.fromHex('#F472B6'),
    500: Color(_materialcolorPinkValue),
    600: HexColor.fromHex('#DB2777'),
    700: HexColor.fromHex('#BE185D'),
    800: HexColor.fromHex('#9D174D'),
    900: HexColor.fromHex('#831843'),
  });

  static final int _materialcolorPinkValue = HexColor.intFromHex('#EC4899');

  static final MaterialColor materialcolorLime =
      MaterialColor(_materialcolorLimeValue, <int, Color>{
    50: HexColor.fromHex('#F7FEE7'),
    100: HexColor.fromHex('#ECFCCB'),
    200: HexColor.fromHex('#D9F99D'),
    300: HexColor.fromHex('#BEF264'),
    400: HexColor.fromHex('#A3E635'),
    500: Color(_materialcolorLimeValue),
    600: HexColor.fromHex('#65A30D'),
    700: HexColor.fromHex('#4D7C0F'),
    800: HexColor.fromHex('#3F6212'),
    900: HexColor.fromHex('#365314'),
  });
  static final int _materialcolorLimeValue = HexColor.intFromHex('#84CC16');

  static final MaterialColor materialcolorOrange =
      MaterialColor(_materialcolorOrangeValue, <int, Color>{
    50: HexColor.fromHex('#FFF7ED'),
    100: HexColor.fromHex('#FFEDD5'),
    200: HexColor.fromHex('#FED7AA'),
    300: HexColor.fromHex('#FDBA74'),
    400: HexColor.fromHex('#FB923C'),
    500: Color(_materialcolorOrangeValue),
    600: HexColor.fromHex('#EA580C'),
    700: HexColor.fromHex('#C2410C'),
    800: HexColor.fromHex('#9A3412'),
    900: HexColor.fromHex('#7C2D12'),
  });
  static final int _materialcolorOrangeValue = HexColor.intFromHex('#F97316');
}
