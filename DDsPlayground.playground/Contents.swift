//: Playground - noun: a place where people can play

//**********************************************************
// CLASS 1: 15th Oct 2016, Saturday
//**********************************************************

import UIKit //only need this lib to import

var str = "Hello, playground" //no type for var, only var
print(str)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Constants and Variables
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// Declare constants with the let keyword
let myConstant = 100
let myConstant2 : Int = 100

// Declare variables with the var keyword
var myCounter = 0

// The type of variable is inferrred to its value, e.g., Float
var myGPA = 3.5

// The variable is inferred to Bool
var likeCoffee = true

// All vars are Objects in Swift (just like js). var obj contains the reference to the address that contains the object.
// In Java, to convert a primitive to wrapper class, you need to do autoboxing
// Language vs scripting
// Swift is a language, not script. Python is a script

// In Swift, a vairbale is an object reference
// And assigned value is an object!

// Use colon ":" to annotate type
var mySemesterGPA : Float
mySemesterGPA = 4.0

var greetingMessage : String

// Now we can assign value to a declared variable
greetingMessage = "How are you"

// But we can't assign value with an incorrect type
// greetingMessage = 14.5 //<----- this is an error

// OK to declare multiple related variables of the same type
var currentGPA, myYear1GPA, myYear2GPA : Float

// Unicode can be used as constant and variable names
// Press ctrl + Cmd + Space to get list of unicodes you can use. Or Go to edit-> Emoji and Symbols.
let Ω = 3.14159
let CanadaFlag = "🇨🇦"
let 🇱🇷 = "United States of America"
let USFlag = "🇱🇷"

// Changing the value

// The value of a variable can be changed
var whereILiveNow = CanadaFlag

// However, we can't change a constant
let myOldestBrother = "Peter Smith"

// This will give a compile time error
//myOldestBrother = "David Dole"

// You can print the value of the a variable
print(whereILiveNow)

// Or the value of a constant
print(myOldestBrother)



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Strings
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//For string interpolation, use backlash
// before the paranthesis
print("I am currently living in 1. \(whereILiveNow)")
print("I am currently living in 2. " + whereILiveNow)

//You can access the individual character values of a String
for char in "From 🇨🇦 to 🇱🇷.".characters {
    print(char)
}

// Or assemble the characters together to form a String 
//char2 is an array of characters
let char2 : [Character] = ["🇨🇦", " ", "t", "o", " " , "🇱🇷"]
let str1  = String(char2)
print(str1)

//note single quote characters are not allowed
//charTest = ['t', 'e', 's', 't']
let charTest : [Character]
charTest = ["t", "e", "s", "t"]
print(charTest)

// you can concatenate 2 strings like this
var whereToGo = "From 🇨🇦" + " to 🇱🇷"
print(whereToGo)



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Type Casting
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// Floating point to integer conversion
let pi  = 3.14159
let integerPi = Int(pi)



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Comments
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// Use 2 forward slashes for single line comments
// this is my first comment
// this is my second comment

// Use (/*) and (*/) to marka  bloack of comment
/*
    I am inside of the block comment
    This is a second line inside the block
*/

// It is absolutely okay to use nested comment in Swift
/* 
    This is the comment in the outer bloack
    /*
        This is a comment in the inner block
    */
*/


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Arrays
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// Arrays provide an ordered list of elements
// This create an array with 5 elements
var myArray = [1, 2, 3, 4, 5]

// access an element in the array
print(myArray[2])
// prints out 3 since Swift arrays are zero indexed

// append to an array
myArray.append(6)
print(myArray)
// prints out [1, 2, 3, 4, 5, 6]

// remove an element from the array
myArray.remove(at: 4)
print(myArray)
// prints [1, 2, 3, 4, 6]

// 2 names - external and internal
// external name is called label
// at: in myArray.remove(at: 4) called label
// at: 4 means you are labelling the argument 4 for the functin remove

// looping through the array
for num in myArray{
    print(num)
}

// declare the type of the elements of an array
var myFloats : [Float] = [1, 2, 3, 4, 6]
print(myFloats) // prints [1.0, 2.0, 3.0, 4.0, 6.0]
print (myFloats[2]) // prints 3.0 instead of just 3




//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Dictionary
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// Dictionaries provide a list of mappings between keys and values
var myDictionary = [1: "apple", 2: "orange", 3: "pear"]

//This below code prints Optional("orange") not orange
//This will be a final exam question - very very important
print( myDictionary[2] )

// Swift has something called optional. In Swift you can't have a null value. null is nil in Swift. Null and values together form a Optional ==> use ? to declare a var as optional. That is the var could be null or could values

// have a safe unwrapping of optional
// if fruit is valid, the print it.
if let fruit = myDictionary[2]{
    print("My favorite fruit is \(fruit)")
}

print( myDictionary[4] ) // prints nil
// below doesn't print anything. myDictionary[4] is nil, so it doesn't enter the block of code to print the fruit name
// This will be an exam question!!! - important!!!
if let fruit = myDictionary[4]{
    print("My favorite fruit is \(fruit)")
}

// prints hellow
if myDictionary[4]==nil {
    print("hellow")
}

// prints hellow
if myDictionary[4] != nil {
    print("hellow")
}

// throws compilation error - issue: no space before and after the !=
//if myDictionary[4]!= nil{
//    print("hellow")
//}

// throws compilation error
//if nil {
//    print("hellow")
//}

// Later wwe will learn about Lazy Loading
// alter a dictionary after you've created it 
myDictionary[2] = "banana"
print(myDictionary[2])

//remove values from a dictionary
myDictionary[1] =  nil
print(myDictionary[1]) //prints nil
print(myDictionary) // prints [2: "banana", 3: "pear"]


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Tuples
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// Tuples are similar to dictionary, but you can have composite of different things
// Tuples group multiple values into a single compound value

// tuple1 after =
let emergencyCallinUS = ("U.S.", 911, "emergency situations")

//tuple2 before =
let (country, number, description) = emergencyCallinUS
print("In \(country), you should dial \(number) for any \(description).")

// You can ignore parts of the tuple using an underscore (_)
let (place, _, _) = emergencyCallinUS
print("You are currently in \(place)")

//Or user can access the individual element values using index numbers
print("You are currently in \(emergencyCallinUS.0), remember to call \(emergencyCallinUS.1) when you encounter any \(emergencyCallinUS.2)")


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Optionals
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// nil cannot be used if constants or variables are not declared as optionals
var emergencyNumberToCall : Int? = 911
emergencyNumberToCall = nil


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Control Flow
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// Here is an if-else statement
var ILikeCoffee = true
if ILikeCoffee {
    print("Let's meet at a coffee shop")
} else {
    print("Let's meet at a tea house")
}

// for-each statement uses closed range operator
for item in 1...3 {
    print("Item \(item): pencil #\(item)")
}

// The closed range operator can also use variables
var start = 1
var end = 10
for item in start...end {
    print("We haveitem \(item).")
}

// C style for-loop is deprecated in Swift 3.0
// before swift 3.0 this will work
// but will throw error now
// for(var i=0; i<10; i++){
//    print("Number \(i)")
// }

// use the swift style from now on
// (a..<b) is called half-open range operators
for j in 0..<10 {
    print("Number \(j)") // prints 0 to 9
}

// for-each statement works with array
let fruits = ["apple", "banana", "cantelope", "durian"]
for fruit in fruits{
    print("I like \(fruit)")
}


// it also works with dictionary
let basket = ["apple": 8, "banana": 2, "cantelopes": 5, "durian": 10]
for (kind,count) in basket {
    print("There are \(count) \(kind) in the basket")
}

// This is a while loop
var cnt = 0
while cnt < 10 {
    print("loop: \(cnt)")
    cnt += 1 // don't use cnt++, not allowed in Swift 3.0
}

//repeat-while loop puts the evaluation of condition at the end
var cnt2 = 0
repeat {
    print("repeat loop \(cnt2)")
    cnt2 += 1
} while cnt2 < 5

// switch statement handles each "case".
// There is no break;
var myNumber = 1
switch myNumber {
    case 1: print("Uno")
    case 2: print("dos")
    case 3: print("tres")
    default: print("That's it. I don't know anymore")
}

// You can use multipe values per case switch statement
switch myNumber{
    case 1,2,3: print("That's easy. I know it in Spanish")
    case 4,5,6,7,8,9: print("That's easy but i dont know it in spanish")
    default: print("Its so hard for me")
}

// or use interval matching or range
switch myNumber{
    case 1..<4: print("That's easy. I know it in Spanish")
    case 0, 4...9: print("That's easy but i dont know it in spanish")
    default: print("Its so hard for me")
}




//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// Function
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// function in swift is a type
// function is a batch of code that can be told to run
func myFirstFunction(){
    let three = 3
    var five = 5
    five = three
    print("Five is \(five)")
}

// function with argument and return type
// You can return multiple things
// If return type is a tuple, I can return many things
func sayHelloAgain(personName: String) -> String {
    let greeting = "Hello, " + personName + ", Good to see you again!"
    return greeting
}

func sayHello(personName: String) -> String {
    let greeting = "Hello, " + personName + "!"
    return greeting
}

// using a function
print(sayHello(personName: "Anna"))
print(sayHello(personName: "Brian"))

// personName here is called label or external parameter name
// personName when you use it inside tha function, its called internal parameter...

// function without parameter
func sayHelloWorld() -> String {
    return "Hello, World"
}
print(sayHelloWorld())

// Function name, arguments and the return type - all these identify the function
// my question: what heppens for overloading???

//function with multiple parameters
func sayHello(personName: String, alreadyGreeted: Bool) -> String {
    if(alreadyGreeted){
        return sayHelloAgain(personName: personName)
    } else {
        return sayHello(personName: personName)
    }
}
print(sayHello(personName: "Tim", alreadyGreeted: true))




