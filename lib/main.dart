import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:yaho_test/routes/app_routes.dart';
import 'package:yaho_test/utils/string_utils.dart';


void main()  {
  runApp( const AppBase());
}

class AppBase extends StatefulWidget {
  const AppBase({super.key});

  @override
  State<AppBase> createState() => _AppBaseState();
}

class _AppBaseState extends State<AppBase> {
  @override
  void initState() {
    ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints( tablet: 600,
    desktop: 950,
    watch: 300),
  );
    super.initState();
  }
  @override
    Widget build(BuildContext context) {
    return 
    GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus?.unfocus();
          }
        },
        child: MaterialApp(
          builder: EasyLoading.init(),
            title: 'Yaho',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                // primaryColor: const ColorUtils.primaryColor,
                unselectedWidgetColor: const Color(0xff4E37D3),
                scrollbarTheme: const ScrollbarThemeData().copyWith(
                  thumbColor: MaterialStateProperty.all(Colors.transparent),
                )
            ),
            onGenerateRoute: AppRoutes.routes,

          ),
      );
  }
}
