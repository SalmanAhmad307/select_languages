import 'package:flutter/material.dart';

class DarkTheme{

  DarkTheme._();


  static ThemeData darkTheme=ThemeData(
    brightness: Brightness.dark,
    appBarTheme: appBarTheme,
    textTheme: textTheme,
    // colorScheme:ColorScheme(
    //   brightness: Brightness.dark,
    //   primary:Colors.teal,
    //   onPrimary: Colors.white,
    //   secondary: Colors.red,
    //   onSecondary: Colors.pink,
    //   error: Colors.redAccent,
    //   onError: Colors.red,
    //   background: Colors.white,
    //   onBackground: Colors.white,
    //   surface: Colors.orange,
    //   onSurface: Colors.deepOrange,
    // ),

  );
  static AppBarTheme appBarTheme=const AppBarTheme(
    backgroundColor: Colors.red,
    foregroundColor: Colors.white,
  );
  static TextTheme textTheme=const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontSize: 50,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      )
  );

}

// import 'package:flutter/material.dart';
// import '../../constants/colors.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// abstract class CustomTheme {
//   static final ThemeData blueTheme = ThemeData(
//     scaffoldBackgroundColor: Colors.white,
//     primaryColor: AppColors.primaryColor,
//
//     // primarySwatch: blueSwatch,
//
//     colorScheme: const ColorScheme.light(
//       primary: AppColors.primaryColor,
//       secondary: AppColors.secondaryColor,
//       //surface: AppColors.surfaceColor,
//       //Card Color
//       primaryContainer: AppColors.successColor,
//       secondaryContainer: AppColors.secondaryColor,
//       tertiaryContainer: AppColors.secondaryTextColor,
//     ),
//
//     ///
//     useMaterial3: false,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.appBarBlueColor,
//     ),
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//       backgroundColor: AppColors.lightBlueFABColor,
//     ),
//     bottomAppBarTheme: const BottomAppBarTheme(
//       color: AppColors.primaryBlueColor,
//     ),
//     // tabBarTheme: TabBarTheme(
//     //
//     // ),
//
//     textTheme: TextTheme(
//       headlineLarge: GoogleFonts.poppins(
//         fontWeight: FontWeight.w600,
//         fontSize: 31.px,
//         color: AppColors.primaryColor,
//       ),
//       headlineMedium: GoogleFonts.poppins(
//         fontWeight: FontWeight.w700,
//         fontSize: 20.px,
//         color: AppColors.whiteColor,
//       ),
//       headlineSmall: GoogleFonts.poppins(
//         fontWeight: FontWeight.w600,
//         fontSize: 20.px,
//         color: AppColors.primaryColor,
//       ),
//       titleLarge: GoogleFonts.poppins(
//         fontWeight: FontWeight.w500,
//         fontSize: 10.px,
//         color: AppColors.primaryColor,
//       ),
// //       titleMedium: GoogleFonts.poppins(
// //         fontWeight: FontWeight.w400,
// //         fontSize: 14.px,
// //         color: Colors.white,
// //       ),
//       titleSmall: GoogleFonts.poppins(
//         fontWeight: FontWeight.w300,
//         fontSize: 21.px,
//         color: AppColors.successColor,
//       ),
//       bodySmall: GoogleFonts.poppins(
//         fontWeight: FontWeight.w600,
//         fontSize: 10.px,
//         color: AppColors.primaryBlueColor,
//       ),
//       bodyMedium: GoogleFonts.poppins(
//         fontWeight: FontWeight.w600,
//         fontSize: 14.px,
//         color: AppColors.hintTextGreyColor,
//       ),
//       bodyLarge: GoogleFonts.poppins(
//         fontWeight: FontWeight.w500,
//         fontSize: 18.px,
//         color: AppColors.darkBlueColor,
//       ),
//
//       titleMedium: GoogleFonts.poppins(
//         fontWeight: FontWeight.w400,
//         fontSize: 14.px,
//         color: Colors.white,
//       ),
//     ),
//     cardColor: AppColors.cardBlueColor,
//     // colorScheme: ColorScheme.fromSwatch(),
//   );
//
//   static final ThemeData redTheme = ThemeData(
//     scaffoldBackgroundColor: Colors.white,
//     primaryColor: AppColors.primaryRedColor,
//
//     // primarySwatch: blueSwatch,
//
//     colorScheme: const ColorScheme.light(
//       primary: AppColors.primaryRedColor,
//       secondary: AppColors.secondaryRedColor,
//       surface: AppColors.surfaceRedColor,
//       //Card Color
//       primaryContainer: AppColors.cardRedColor,
//       secondaryContainer: AppColors.darkRedColor,
//       tertiaryContainer: AppColors.borderRedColor,
//     ),
//
//     ///
//     useMaterial3: false,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.appBarRedColor,
//     ),
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//       backgroundColor: AppColors.lightRedFABColor,
//     ),
//     bottomAppBarTheme: const BottomAppBarTheme(
//       color: AppColors.primaryRedColor,
//     ),
//     // tabBarTheme: TabBarTheme(
//     //
//     // ),
//
//     textTheme: TextTheme(
//       headlineLarge: GoogleFonts.poppins(
//         fontWeight: FontWeight.w600,
//         fontSize: 31.px,
//         color: AppColors.primaryRedColor,
//       ),
//       headlineMedium: GoogleFonts.poppins(
//         fontWeight: FontWeight.w700,
//         fontSize: 20.px,
//         color: AppColors.whiteColor,
//       ),
//       headlineSmall: GoogleFonts.poppins(
//         fontWeight: FontWeight.w600,
//         fontSize: 20.px,
//         color: AppColors.primaryRedColor,
//       ),
//       titleLarge: GoogleFonts.poppins(
//         fontWeight: FontWeight.w500,
//         fontSize: 10.px,
//         color: AppColors.lightRedColor,
//       ),
// //       titleMedium: GoogleFonts.poppins(
// //         fontWeight: FontWeight.w400,
// //         fontSize: 14.px,
// //         color: Colors.white,
// //       ),
//       titleSmall: GoogleFonts.poppins(
//         fontWeight: FontWeight.w300,
//         fontSize: 21.px,
//         color: AppColors.darkRedColor,
//       ),
//       bodySmall: GoogleFonts.poppins(
//         fontWeight: FontWeight.w600,
//         fontSize: 10.px,
//         color: AppColors.primaryRedColor,
//       ),
//       bodyMedium: GoogleFonts.poppins(
//         fontWeight: FontWeight.w600,
//         fontSize: 14.px,
//         color: AppColors.hintTextGreyColor,
//       ),
//       bodyLarge: GoogleFonts.poppins(
//         fontWeight: FontWeight.w500,
//         fontSize: 18.px,
//         color: AppColors.darkRedColor,
//       ),
//
//       titleMedium: GoogleFonts.poppins(
//         fontWeight: FontWeight.w400,
//         fontSize: 14.px,
//         color: Colors.white,
//       ),
//     ),
//     cardColor: AppColors.cardRedColor,
//     // colorScheme: ColorScheme.fromSwatch(),
//   );
//
//   static final ThemeData greenTheme = ThemeData(
//     scaffoldBackgroundColor: Colors.white,
//     primaryColor: AppColors.primaryGreenColor,
//
//     // primarySwatch: blueSwatch,
//
//     colorScheme: const ColorScheme.light(
//       primary: AppColors.primaryGreenColor,
//       secondary: AppColors.secondaryGreenColor,
//       surface: AppColors.surfaceGreenColor,
//       //Card Color
//       primaryContainer: AppColors.cardGreenColor,
//       secondaryContainer: AppColors.darkGreenColor,
//       tertiaryContainer: AppColors.borderGreenColor,
//     ),
//
//     ///
//     useMaterial3: false,
//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.appBarGreenColor,
//     ),
//     floatingActionButtonTheme: const FloatingActionButtonThemeData(
//       backgroundColor: AppColors.lightGreenFABColor,
//     ),
//     bottomAppBarTheme: const BottomAppBarTheme(
//       color: AppColors.primaryGreenColor,
//     ),
//     // tabBarTheme: TabBarTheme(
//     //
//     // ),
//
//     textTheme: TextTheme(
//       headlineLarge: GoogleFonts.poppins(
//         fontWeight: FontWeight.w600,
//         fontSize: 31.px,
//         color: AppColors.primaryGreenColor,
//       ),
//       headlineMedium: GoogleFonts.poppins(
//         fontWeight: FontWeight.w700,
//         fontSize: 20.px,
//         color: AppColors.whiteColor,
//       ),
//       headlineSmall: GoogleFonts.poppins(
//         fontWeight: FontWeight.w600,
//         fontSize: 20.px,
//         color: AppColors.primaryGreenColor,
//       ),
//       titleLarge: GoogleFonts.poppins(
//         fontWeight: FontWeight.w500,
//         fontSize: 10.px,
//         color: AppColors.lightGreenColor,
//       ),
// //       titleMedium: GoogleFonts.poppins(
// //         fontWeight: FontWeight.w400,
// //         fontSize: 14.px,
// //         color: Colors.white,
// //       ),
//       titleSmall: GoogleFonts.poppins(
//         fontWeight: FontWeight.w300,
//         fontSize: 21.px,
//         color: AppColors.darkGreenColor,
//       ),
//       bodySmall: GoogleFonts.poppins(
//         fontWeight: FontWeight.w600,
//         fontSize: 10.px,
//         color: AppColors.primaryGreenColor,
//       ),
//       bodyMedium: GoogleFonts.poppins(
//         fontWeight: FontWeight.w600,
//         fontSize: 14.px,
//         color: AppColors.hintTextGreyColor,
//       ),
//       bodyLarge: GoogleFonts.poppins(
//         fontWeight: FontWeight.w500,
//         fontSize: 18.px,
//         color: AppColors.darkGreenColor,
//       ),
//
//       titleMedium: GoogleFonts.poppins(
//         fontWeight: FontWeight.w400,
//         fontSize: 14.px,
//         color: Colors.white,
//       ),
//     ),
//     cardColor: AppColors.cardGreenColor,
//     // colorScheme: ColorScheme.fromSwatch(),
//   );
// }
//
// MaterialColor blueSwatch = MaterialColor(const Color(0xff047DFF).value, const {
//   50: Color(0x0d047dff),
//   100: Color(0x1a047dff),
//   200: Color(0x33047dff),
//   300: Color(0x4d047dff),
//   400: Color(0x66047dff),
//   500: Color(0xff047DFF), // 500
//   600: Color(0x99047dff),
//   700: Color(0xb3047dff),
//   800: Color(0xcc047dff),
//   900: Color(0xe6047dff),
// });