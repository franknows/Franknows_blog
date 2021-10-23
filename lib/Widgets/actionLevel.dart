import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

actionLevel(
  String txt,
  String score,
  IconData iconInfo,
) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey[400]),
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
      child: Container(
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey[400],
                    child: CircleAvatar(
                      radius: 17,
                      //backgroundColor: Color(0xffFDCF09),
                      backgroundColor: Colors.grey[200],
                      child: Center(
                        child: Icon(
                          iconInfo,
                          color: Colors.black87,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                txt,
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: .5,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                score,
                textAlign: TextAlign.start,
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  color: Colors.black87,
                  letterSpacing: .5,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
