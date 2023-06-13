Widget _cardMenu({
  required String title,
  required String icon ,
  VoidCallback? onTap,
  Color color = Colors.white,
  Color fontColor = Colors.grey,

}){

  return GestureDetector(
    onTap:onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: color,

      ),
      child: Column(
        children: [
          Image.asset(icon),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: fontColor,
            ),
          ),
        ],
      ),
    ),
  );

}
