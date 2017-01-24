public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String finalS = noSpaces(word);
  finalS = noCapitals(finalS);
  finalS = onlyLetters(finalS);

  if(finalS.equals(reverse(finalS)))
  {
    return true;
  }
  return false;
}

public String reverse(String str)
{
    String sNew = new String();
    int n = str.length() -1;
    for(int i = n; i>= 0; i--)
    {
      sNew = sNew + str.substring(i,i+1);
    }
    return sNew;
}

public int numLetters(String sString){
  int num = 0;
  for(int i = 0; i < sString.length(); i++)
  {
    if(Character.isLetter(sString.charAt(i)) == true)
    {
      num++;
    }
  }
  return num;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

public String noSpaces(String sWord){
  String empty = new String();
  for(int i = 0; i < sWord.length(); i++)
  {
    String letter = sWord.substring(i, i+1);
    if(!letter.equals(" "))
    {
      empty = empty + letter;
    
    }
  }
  return empty;
}

public String onlyLetters(String sString){
  if(sString.length() == 0)
  {
    return "";
  }
  else if(Character.isLetter(sString.charAt(0)))
  {
    return sString.charAt(0) + onlyLetters(sString.substring(1));
  }
  else
  {
    return onlyLetters(sString.substring(1));
  }
}
