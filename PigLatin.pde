public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) 
  {

    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
  //not used
}
public int findFirstVowel(String sWord) {
  for (int i =0; i < sWord.length()-1; i++)
  {
    // if(word.substring(i, i+1).equals("a")){
    char letter = sWord.charAt(i);
    if (letter== 'a'||letter== 'e'||letter== 'i'||letter== 'o'||letter== 'u') {
      return i;
    }
  }
  return -1;
}

public String pigLatin(String sWord)
  //precondition: sWord is a valid String of length greater than 0
  //postcondition: returns the pig latin equivalent of sWord
{
  if (findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  } else if (findFirstVowel(sWord) == 0)
  {

    return sWord + "ay";
  } else if (sWord.charAt(0)=='q' && sWord.charAt(1)=='u') {
    return sWord.substring(2)+ sWord.substring(0, 2) + "ay";
  } else
    return sWord.substring(findFirstVowel(sWord)) +sWord.substring(0, findFirstVowel(sWord)) + "ay";
}