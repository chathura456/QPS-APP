import 'package:flutter/material.dart';
import 'package:finalqps/widgets/widgets.dart';
import 'package:flutter/services.dart';

/*class RoundedInputField extends StatelessWidget {
  RoundedInputField(
      {Key? key,
      this.hintText,
      this.icon = Icons.person,
      required this.controller,
      this.validator})
      : super(key: key);
  final String? hintText;
  final IconData icon;
  final TextEditingController controller;
  final FormFieldValidator? validator;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: validator,
        controller: controller,
        onSaved: (value) {
          controller.text = value!;
        },
        cursorColor: AppColors.kPrimaryColor,
        style: const TextStyle(color: AppColors.kPrimaryColor),
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: const Color(0xff80065d),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColors.kPrimaryColor60,
          ),
          helperStyle: const TextStyle(fontFamily: 'OpenSans'),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor10,
          borderRadius: BorderRadius.circular(29),
        ),
        child: child,
      ),
    );
  }
}

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField(
      {Key? key, required this.controller, this.validator})
      : super(key: key);
  final TextEditingController controller;
  final FormFieldValidator? validator;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: validator,
        controller: controller,
        onSaved: (value) {
          controller.text = value!;
        },
        style: const TextStyle(color: AppColors.kPrimaryColor),
        obscureText: true,
        cursorColor: AppColors.kPrimaryColor,
        decoration: InputDecoration(
          icon: const Icon(
            Icons.lock,
            color: AppColors.kPrimaryColor,
          ),
          hintText: "Password",
          hintStyle: TextStyle(
            color: AppColors.kPrimaryColor60,
          ),
          helperStyle: const TextStyle(fontFamily: 'OpenSans'),
          suffixIcon: const Icon(
            Icons.visibility,
            color: Color(0xff80065d),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}*/

class RoundedInputField1 extends StatefulWidget {
  const RoundedInputField1(
      {Key? key,
      this.hintText,
      this.icon = Icons.person,
      required this.controller,
      this.validator})
      : super(key: key);
  final String? hintText;
  final IconData icon;
  final TextEditingController controller;
  final FormFieldValidator? validator;



  @override
  State<RoundedInputField1> createState() => _RoundedInputField1State();
}

class _RoundedInputField1State extends State<RoundedInputField1> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      final String text = widget.controller.text;
      widget.controller.value = widget.controller.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.done,
      validator: widget.validator,
      controller: widget.controller,
      onSaved: (value) {
        widget.controller.text = value!;
      },
      cursorColor: AppColors.kPrimaryColor,
      style: const TextStyle(color: AppColors.kPrimaryColor),
      decoration: InputDecoration(
        errorStyle: TextStyle(color: AppColors.kPrimaryColor60),
        filled: true,
        fillColor: AppColors.kPrimaryColor10,
        prefixIcon: Icon(
          widget.icon,
          color: const Color(0xff80065d),
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: AppColors.kPrimaryColor60,
        ),
        helperStyle: const TextStyle(fontFamily: 'OpenSans'),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(29.0),
          borderSide: const BorderSide(
            color: AppColors.kPrimaryColor,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(29.0),
          borderSide: BorderSide(
            color: AppColors.kPrimaryColor10,
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(29.0),
          borderSide: const BorderSide(
            color: AppColors.kPrimaryColor,
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(29),
          borderSide: BorderSide(color: AppColors.kPrimaryColor10, width: 1.0),
        ),
      ),
    );
  }
}

class RoundedInputField2 extends StatefulWidget {
  const RoundedInputField2(
      {Key? key,
        this.hintText,
        this.icon = Icons.person,
        required this.controller,
        this.validator})
      : super(key: key);
  final String? hintText;
  final IconData icon;
  final TextEditingController controller;
  final FormFieldValidator? validator;



  @override
  State<RoundedInputField2> createState() => _RoundedInputField1State2();
}

class _RoundedInputField1State2 extends State<RoundedInputField2> {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      final String text = widget.controller.text;
      widget.controller.value = widget.controller.value.copyWith(
        text: text,
        selection:
        TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      validator: widget.validator,
      controller: widget.controller,
      onSaved: (value) {
        widget.controller.text = value!;
      },
      cursorColor: AppColors.kPrimaryColor,
      style: const TextStyle(color: AppColors.kPrimaryColor),
      decoration: InputDecoration(
        errorStyle: TextStyle(color: AppColors.kPrimaryColor60),
        filled: true,
        fillColor: AppColors.kPrimaryColor10,
        prefixIcon: Icon(
          widget.icon,
          color: const Color(0xff80065d),
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: AppColors.kPrimaryColor60,
        ),
        helperStyle: const TextStyle(fontFamily: 'OpenSans'),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(29.0),
          borderSide: const BorderSide(
            color: AppColors.kPrimaryColor,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(29.0),
          borderSide: BorderSide(
            color: AppColors.kPrimaryColor10,
            width: 1.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(29.0),
          borderSide: const BorderSide(
            color: AppColors.kPrimaryColor,
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(29),
          borderSide: BorderSide(color: AppColors.kPrimaryColor10, width: 1.0),
        ),
      ),
    );
  }
}

class RoundedPasswordField1 extends StatefulWidget {
  const RoundedPasswordField1(
      {Key? key, required this.controller, this.validator})
      : super(key: key);
  final TextEditingController controller;
  final FormFieldValidator? validator;

  @override
  State<RoundedPasswordField1> createState() => _RoundedPasswordField1State();
}

class _RoundedPasswordField1State extends State<RoundedPasswordField1> {
  @override
  void initState() {
    _passwordVisible = true;
    super.initState();
    widget.controller.addListener(() {
      final String text = widget.controller.text.toLowerCase();
      widget.controller.value = widget.controller.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  late bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      autofocus: false,
      validator: widget.validator,
      controller: widget.controller,
      onSaved: (value) {
        widget.controller.text = value!;
      },
      onChanged: (value){
        value=widget.controller.text;
      },
      style: const TextStyle(color: AppColors.kPrimaryColor),
      obscureText: _passwordVisible,
      cursorColor: AppColors.kPrimaryColor,
      decoration: InputDecoration(
        errorStyle: TextStyle(color: AppColors.kPrimaryColor60),
        filled: true,
        fillColor: AppColors.kPrimaryColor10,
        prefixIcon: const Icon(
          Icons.lock,
          color: AppColors.kPrimaryColor,
        ),
        hintText: "Password",
        hintStyle: TextStyle(
          color: AppColors.kPrimaryColor60,
        ),
        helperStyle: const TextStyle(fontFamily: 'OpenSans'),
        suffixIcon: IconButton(
          icon: Icon(
            // Based on passwordVisible state choose the icon
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: const Color(0xff80065d),
          ),
          onPressed: () {
            // Update the state i.e. toogle the state of passwordVisible variable
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
        ),

        /*
        suffixIcon: const Icon(
          Icons.visibility,
          color: Color(0xff80065d),
        ),
        */
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(29.0),
          borderSide: const BorderSide(
            color: AppColors.kPrimaryColor,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(29.0),
          borderSide: const BorderSide(
            color: AppColors.kPrimaryColor,
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(29.0),
          borderSide: BorderSide(
            color: AppColors.kPrimaryColor10,
            width: 1.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(29),
          borderSide: BorderSide(color: AppColors.kPrimaryColor10, width: 1.0),
        ),
      ),
    );
  }
}
