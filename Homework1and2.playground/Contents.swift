//-----------Homework 1----------//

// Problem #1
print("Problem 1.1")
let myString = "hello"
var cost = 3.14
let cnt: Int = 2
var shouldWe: Bool = true
let hexValue: Int = 0x11
print(hexValue)
let decimalValue = Int(String(10, radix: 2))
print(decimalValue!)

// Problem #2
print("\nProblem 1.2")
let value: Double = 3.0
var p2String = "the final value is \(value / 2.0)"
print(p2String)


// Problem #3
print("\nProblem 1.3")
var bees: [String] = ["queen","worker","drone"]
print(bees[0])
bees.append("honey")
bees+=["are","us"]
print(bees)

// Problem #4
print("\nProblem 1.4")
for item in bees{
    print(item)
}
for (index,value) in bees.enumerated() {
    print("Item #\(index) is \(value)")
}

// Problem #5
print("\nProblem 1.5")
var authorDict: Dictionary<String, Float> = ["Mark Twain":8.9,"Nathaniel Hawthorne":5.1,"John Steinbeck":2.3,"C.S. Lewis":9.9,"Jon Krakaur":6.1]
print("\(authorDict.keys) : \(authorDict.values)")

// Problem #6
print("\nProblem 1.6")
print(authorDict["John Steinbeck"]!)
authorDict["Erik Larson"] = 9.2
var author1 = "Mark Twain"
var author2 = "Jon Krakaur"
if authorDict[author1]! > authorDict[author2]! {
    print(author1)
}
else {
    print(author2)
}

// Problem #7
print("\nProblem 1.7")
for (author,score) in authorDict {
    print("\(author): \(score)")
}

// Problem #8
print("\nProblem 1.8")
for index in 1...10 {
    print(index)
}

// Problem #9
print("\nProblem 1.9")
for index in (1...10).reversed(){
    print(index)
}

// Problem #10
print("\nProblem 1.10")
var x = 5
var y = 10
var product = 0
for _ in 1...y{
    product += x
}
print(product)

//---------Homework 2------------

// Problem #1
print("\nProblem 2.1")
var i:Int = 0
var sum:Float = 0
let scores = Array(authorDict.values)

while i < authorDict.keys.count {
    sum += scores[i]
    i+=1
}
let average = sum/Float(i)
print("Average \(average)")

// Problem #2
print("\nProblem 2.2")
if average < 5.0 {
    print("Low")
}
else if average < 7 {
    print("Moderate")
}
else {
    print("High")
}

// Problem #3 and #4
print("\nProblem 2.3 and 2.4")
func verbalizeNumber(count: Int) -> String {
    var strOut:String
    switch count {
    case 0:
        strOut = "none"
    case 1...3:
        strOut = "a few"
    case 4...9:
        strOut = "several"
    case 10...99:
        strOut = "tens of"
    case 100...999:
        strOut = "hundreds of"
    case 1000...999999:
        strOut = "thousands of"
    case _ where count > 999999:
        strOut = "millions of"
    default:
        strOut = "invalid number"
    }
    return strOut
}

// Problem #5
print("\nProblem 2.5")
for index in stride(from: 1, to: 100000000, by: 10) {
    print(verbalizeNumber(count: index))
}

// Problem #6
print("\nProblem 2.6")
func verbalizeAndShoutNumber(count:Int) -> String {
    return verbalizeNumber(count: count).uppercased()
}
print(verbalizeAndShoutNumber(count: 1000))

// Problem #7
print("\nProblem 2.7")
func expressNumbersElegantly(max:Int, functionInput: (Int) -> String) -> String {
    var finalString: String = ""
    for index in stride(from: 1, to: max, by: 10) {
        finalString += functionInput(index)
    }
    return finalString
}

var currentFunction: ((Int) -> String)
currentFunction = verbalizeNumber
print(expressNumbersElegantly(max: 20, functionInput: currentFunction))
currentFunction = verbalizeAndShoutNumber
print(expressNumbersElegantly(max: 20, functionInput: currentFunction))

// Problem #8
print("\nProblem 2.8")
func expressNumbersVeryElegantly(maximumIndex max:Int, intToTextFunction functionInput: (Int) -> String) -> String {
    var finalString: String = ""
    for index in stride(from: 1, to: max, by: 10) {
        finalString += functionInput(index)
    }
    return finalString
}

print(expressNumbersVeryElegantly(maximumIndex: 20, intToTextFunction: currentFunction))

// Problem #9
print("\nProblem 2.9")
var famousLastWords = ["the cow jumped over the moon.", "three score and four years ago", "lets nuc 'em Joe!", "ah, there is just something about Swift"]
var famousLastCaps = famousLastWords.map() {$0.prefix(1).uppercased() + $0.dropFirst()}

// Problem #10, implementation of collatz conjecture
print("\nProblem 2.10")
func collatz(input: Int) -> Int {
    if input % 2 == 0 {
        let result = input / 2
        print(result)
        return result
    }
    else{
        let result = input * 3 + 1
        print(result)
        return result
    }
}

// set to any positive integer and collatz will eventually reach 1
var collatzNum = 12341235654
while collatzNum != 1 {
    collatzNum = collatz(input: collatzNum)
}
