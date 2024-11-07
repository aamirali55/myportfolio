import 'package:flutter/material.dart';
import 'package:myportfolio/utils/web_colors.dart';
import 'package:myportfolio/widgets/custem_button_widget.dart';

class DesktopContact extends StatelessWidget {
  bool isDarkMode;
  DesktopContact({
    super.key,
    required this.isDarkMode,
  });

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 300,
      width: maxWidth,
      color: WebColors.backgroundColor(isDarkMode),
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Text(
            "Let's Developed Together",
            style: TextStyle(
                fontSize: 50,
                color: WebColors.textColorBold(isDarkMode),
                fontFamily: "Roboto",
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            textAlign: TextAlign.center,
            "Lorem ipsum dolor sit amet consectetur. Tristique amet sed massa nibh lectus\nnetus in. Aliquet donec morbi convallis pretium",
            style: TextStyle(
                fontSize: 21,
                color: WebColors.textColor(isDarkMode),
                fontFamily: "Roboto",
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 610,
                height: 52,
                child: TextField(
                  style: TextStyle(
                    color:
                        WebColors.textColorBold(isDarkMode), 
                  ),
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                      color: WebColors.textColorBold(
                          isDarkMode), 
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          BorderSide(color: WebColors.primaryColor(isDarkMode)),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              CustomButtonWidget(
                isDarkMode: isDarkMode,
                width: 140,
                height: 52,
                buttonName: "Contact Me",
                function: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text("Thanks and wait for response")),
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
