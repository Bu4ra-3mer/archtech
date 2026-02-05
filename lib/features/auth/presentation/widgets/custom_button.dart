import 'package:archtech/core/constatnts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
    final VoidCallback? onPressed;
  final bool isLoading;
  const CustomButton({super.key,required this.text,this.onPressed,this.isLoading = false,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        minimumSize: const Size(350, 60),
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),),
        disabledBackgroundColor: AppColors.primary.withOpacity(0.6),
        
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
