/*** Foundation provides text processing, essential data type for the functionality, among others thing ***/
import Foundation

// VARIABLES //
var stringVariable : String
var characterVariable : Character
var word = ""
var length = 0
var max = 0
var min = 0
var longestWord = ""
var shortestWord = ""

// Using VARIABLES //
print("")
stringVariable = "Checo is a highly respected Team member and his experience and race-craft are invaluable as we fight for the Constructors’ Championship, said Red Bull boss Christian Horner. His integration into the wider Team has been seamless and we have been impressed by his performances during the first half of the season which demonstrate what he’s capable of in our car."
print("Text to be analysed", terminator : ": ")
print(stringVariable)
print("")

characterVariable = "C"
print("")


// # WORDS //
/**** 
split() method on a String, which takes a separator as a Character. It'll then split the original string using the separator into an array of substrings and return it. This will greatly simplify value extraction from strings for our current intents and purposes 
To only split a string by characters other than letters, we can use the isLetter character property
count is the number of elements in the collection
****/
let numberOfWords =  stringVariable.split { !$0.isLetter }
print("Number of words in the text", terminator : ": ")
print(numberOfWords.count)
print("")


// OCCURRENCES //
/*** components(separatedBy:" ") returns an array containing substrings from the receiver that have divided by a fiven separator ***/
let numberOfOccurrences =  stringVariable.components(separatedBy:"and")
print("Occurrences of the word 'and' in the text", terminator : ": ")
print(numberOfOccurrences.count-1)
print("")


// LONGEST WORD //
/*
stringVariable += " "

for character in stringVariable
{
  if character == " "
    {
    if length > max
    {
      max = length 
      longestWord = word
    }
    word = ""
    length = 0
  } else {
    word += "\(character)"
    length += 1
  }
}
print("Longest word in the text", terminator : ": ")
print(longestWord)
print("Number of characters in the longest word", terminator : ": ")
print(longestWord.count)
print("")
*/

if let longestWord = numberOfWords.max(by: {$1.count > $0.count})
{
    print("Longest word in the text", terminator : ": ")
    print(longestWord)
    print("Number of characters in the longest word", terminator : ": ")
    print(longestWord.count)
}
print("")


// SHORTEST WORD //
/*
stringVariable += " "

for character in stringVariable
{
  if character == " "
    {
    if length < min
    {
      min = length 
      shortestWord = word
    }
    word = ""
    length = 0
  } else {
    word += "\(character)"
    length += 1
  }
}
print("Shortest word in the text", terminator : ": ")
print(shortestWord)
print("Number of characters in the shortest word", terminator : ": ")
print(shortestWord.count)
print("")
*/

if let shortestWord = numberOfWords.min(by: {$1.count > $0.count})
{
   print("Shortest word in the text", terminator : ": ")
   print(shortestWord)
   print("Number of characters in the shortest word", terminator : ": ")
   print(shortestWord.count)

}
print("")


// SAME LETTER //
/* hasPrefix() is used to compare the same prefix in the words, and lowercased() is used to take the small letters */
var withDots: Array<String> = Array()
for character in numberOfWords
{
  if(character.hasPrefix(String(characterVariable)) || character.hasPrefix(String(characterVariable).lowercased()))
  {
    withDots.append(String(character))
  } 
}
print("Words that start with '\(characterVariable)': ")
print(withDots.joined(separator:"."))