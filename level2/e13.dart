// Write a program that takes two strings as input and returns the longest common subsequence of the two strings.
import 'dart:io';
import 'dart:math';
void main(){
  stdout.write("Enter the first string: ");
  String str1 = stdin.readLineSync() ?? '';
  stdout.write("Enter the second string: ");
  String str2 = stdin.readLineSync() ?? '';
  if (str1.isEmpty || str2.isEmpty) {
    print('One or both strings are empty.');
    return;
  }else{
    List<List<int>> dp = List.generate(str1.length + 1, (i) => List.filled(str2.length + 1, 0));
    for (int i = 1; i <= str1.length; i++) {
      for (int j = 1; j <= str2.length; j++) {
        if (str1[i - 1] == str2[j - 1]) {
          dp[i][j] = dp[i - 1][j - 1] + 1;
        } else {
          dp[i][j] = max(dp[i - 1][j], dp[i][j - 1]);
        }
      }
    }
    String lcs = '';
    int i = str1.length, j = str2.length;
    while (i > 0 && j > 0) {
      if (str1[i - 1] == str2[j - 1]) {
        lcs = str1[i - 1] + lcs;
        i--;
        j--;
      } else if (dp[i - 1][j] > dp[i][j - 1]) {
        i--;
      } else {
        j--;
      }
    }
    print('The longest common subsequence is: $lcs');
  }
}