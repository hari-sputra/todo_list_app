// color pallet
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color bgColor = Color(0xff121212);
Color prymaryColor = Color(0xff8875FF);
Color secondaryColor =  Color(0xffFFFFFF).withOpacity(.87);
Color secondary2Color = const Color(0xffFFFFFF).withOpacity(.67);
Color secondary3Color = const Color(0xffFFFFFF).withOpacity(.44);

// text style
TextStyle primaryTextStyle = GoogleFonts.lato(
  color: secondaryColor,
);
TextStyle secondaryTextStyle = GoogleFonts.lato(
  color: secondary2Color,
);
TextStyle greyTextStyle = GoogleFonts.lato(
  color: secondary3Color,
);

// font weight
FontWeight light = FontWeight.w300;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
