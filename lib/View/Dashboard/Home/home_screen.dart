import '../../../Utility/common_textfield.dart';
import '../../../Utility/utility_export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textEditingController = TextEditingController();

  List myProfit = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];

  @override
  Widget build(BuildContext context) {
    return commonStructure(
        context: context,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              customHeight(100),
              commonTextField(
                  hintText: 'Enter Phone number',
                  textEditingController: textEditingController,
                  suffixIcon: const Icon(
                    Icons.call,
                    color: colorGrey,
                  )),
              customHeight(20),
              commonTextField(
                  hintText: 'Enter Aadhaar number',
                  textEditingController: textEditingController,
                  labelText: 'Enter Aadhaar number',
                  suffixIcon: const Icon(
                    Icons.credit_card_rounded,
                    color: colorGrey,
                  )),
              customHeight(20),

              commonDropdownButtonFormField(
                  dropdownItems: myProfit,
                  onChange: (val) {
                    print("object >>> $val");
                  }),

              // ButtonTheme(
              //   alignedDropdown: true,
              //   child: DropdownButtonFormField(
              //       dropdownColor: white,
              //       hint: Text(myProfit.first,
              //           style: AppFontStyle.blackSFProDisplay16W500, textAlign: TextAlign.end),
              //       icon: const Icon(
              //         Icons.keyboard_arrow_down_outlined,
              //         color: black,
              //       ),
              //       decoration: const InputDecoration(
              //           enabledBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.all(
              //               Radius.circular(5),
              //             ),
              //             borderSide: BorderSide(color: colorGrey, width: 1),
              //           ),
              //           focusedBorder: OutlineInputBorder(
              //             borderRadius: BorderRadius.all(
              //               Radius.circular(5),
              //             ),
              //             borderSide: BorderSide(color: Colors.black, width: 1),
              //           ),
              //           filled: true,
              //           contentPadding: EdgeInsets.fromLTRB(15.0, 12.0, 10.0, 12.0),
              //           hintStyle: TextStyle(color: colorGrey),
              //           hintText: "Name",
              //           fillColor: white),
              //       items: myProfit.map((value) {
              //         return DropdownMenuItem(
              //           value: value,
              //           child: Text(
              //             value,
              //             style: AppFontStyle.blackSFProDisplay16W500,
              //             textAlign: TextAlign.right,
              //           ),
              //         );
              //       }).toList(),
              //       onChanged: (value) {
              //         print("object >?>>  $value");
              //       }),
              // )
            ],
          ),
        ));
  }
}
