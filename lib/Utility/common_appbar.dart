import 'package:kekaya/Utility/utility_export.dart';

PreferredSize commonAppBar({
  String? title,
  Widget? titleWidget,
  bool isTransparent = false,
  List<Widget> actionWidgets = const [
    SizedBox(
      height: 25,
      width: 25,
    )
  ],
  Function? backButtonCallBack,
  PreferredSizeWidget? bottom,
  Widget? leadingIcon,
  Color? appbarBgColor,
  double? elevation,
  double? height,
}) {
  return PreferredSize(
      preferredSize: Size.fromHeight(height ?? 50.0),
      child: AppBar(
        bottom: bottom,
        elevation: elevation ?? 0.0,
        backgroundColor: appbarBgColor ?? colorPrimary,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        centerTitle: true,
        leading: leadingIcon ??
            InkWell(
              highlightColor: appbarBgColor ?? colorPrimary,
              focusColor: appbarBgColor ?? colorPrimary,
              onTap: () {
                if (backButtonCallBack != null) {
                  backButtonCallBack();
                } else {
                  Get.back();
                }
              },
              child: InkWell(
                highlightColor: appbarBgColor ?? colorPrimary,
                focusColor: appbarBgColor ?? colorPrimary,
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.keyboard_backspace_sharp,
                  color: black,
                  size: 25,
                ),
              ),
            ),
        title: Text(
          title ?? "",
          textAlign: TextAlign.center,
          style: AppFontStyle.blackSFProDisplay20W600,
        ),
        actions: actionWidgets,
        // actions: actions != null ? actions : null,
      ));
}

