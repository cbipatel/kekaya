import 'package:kekaya/Utility/utility_export.dart';

import 'navigation_service.dart';

Widget commonOutlineButton({required Function onPress, required String title}) {
  return OutlinedButton(
      onPressed: () {
        onPress();
      },
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          side: const BorderSide(width: 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(10),
        //     border: Border.all(color: colorBrown, width: 1)),
        child: Text(
          title,
          style: AppFontStyle.blackSFProDisplay16W600,
        ),
      ));
}

Widget commonFilledButton({required Function onPress, required String title}) {
  // check null safety
  return FilledButton(
      style: ElevatedButton.styleFrom(
          minimumSize:
              Size(getScreenWidth(NavigationService.navigatorKey.currentContext!) * 0.65, 46),
          maximumSize:
              Size(getScreenWidth(NavigationService.navigatorKey.currentContext!) * 0.70, 46),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
      onPressed: () {
        onPress();
      },
      child: Text(
        title,
        style: AppFontStyle.blackSFProDisplay16W600.copyWith(color: white),
      ));
}

Widget commonDropdownButtonFormField({required List dropdownItems, required Function onChange}) {
  // check null safety
  return ButtonTheme(
    alignedDropdown: true,
    child: DropdownButtonFormField(
        dropdownColor: white,
        hint: Text(dropdownItems.first,
            style: AppFontStyle.blackSFProDisplay16W500, textAlign: TextAlign.end),
        icon: const Icon(
          Icons.keyboard_arrow_down_outlined,
          color: black,
        ),
        decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              borderSide: BorderSide(color: colorGrey, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              borderSide: BorderSide(color: Colors.black, width: 1),
            ),
            filled: true,
            contentPadding: EdgeInsets.fromLTRB(15.0, 12.0, 10.0, 12.0),
            hintStyle: TextStyle(color: colorGrey),
            hintText: "Name",
            fillColor: white),
        items: dropdownItems.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Text(
              value,
              style: AppFontStyle.blackSFProDisplay16W500,
              textAlign: TextAlign.right,
            ),
          );
        }).toList(),
        onChanged: (value) {
          onChange(value);
        }),
  );
}
