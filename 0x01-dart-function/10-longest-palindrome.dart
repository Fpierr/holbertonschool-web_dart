import '9-palindrome.dart';

String longestPalindrome(String s) {
  String longest = "none";

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String sub = s.substring(i, j);
      if (isPalindrome(sub) &&
          sub.length > (longest == "none" ? 0 : longest.length)) {
        longest = sub;
      }
    }
  }

  return longest;
}
