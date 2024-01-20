import UIKit

// Variables and Constant
var name1 = "Tim McGraw"
name1 = "Romeo"
let name2 = "Tim McGraw"

// Types of data
var name: String
name = "Tim McGraw"
var age: Int
age = 25

var latitude1: Double
latitude1 = 36.166667
var longitude1: Float
longitude1 = -86.783333

var longitude2: Float
longitude2 = -86.783333
longitude2 = -186.783333
longitude2 = -1286.783333
longitude2 = -12386.783333
longitude2 = -123486.783333
longitude2 = -1234586.783333

var stayOutTooLate: Bool
stayOutTooLate = true
var nothingInBrain: Bool
nothingInBrain = true
var missABeat: Bool
missABeat = false

// Operators
var a = 10
a = a + 1
a = a - 1
a = a * a
var b = 10
b += 10
b -= 10

var a1 = 1.1
var b1 = 2.2
var c = a1 + b1
var name3 = "Tim McGraw"
var name4 = "Romeo"
var both = name3 + " and " + name4

var a2 = 1.1
var b2 = 2.2
var c2 = a2 + b2
c2 > 3
c2 >= 3
c2 > 4
c2 < 4

var name5 = "Tim McGraw"
name5 == "Tim McGraw"

var stayOutTooLate1 = true
stayOutTooLate1
!stayOutTooLate1

var name6 = "Tim McGraw"
name6 == "Tim McGraw"
name6 != "Tim McGraw"

// String Interpolation
var name7 = "Tim McGraw"
var age2 = 25
var latitude = 36.166667
"Your name is \(name7), your age is \(age2), and your latitude is \(latitude)"
"You are \(age2) years old. In another \(age2) years you will be \(age2 * 2)."

// Arrays
var evenNumbers = [2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
songs[0]
songs[1]
songs[2]
type(of: songs)
var songs2: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]
type(of: songs2)

var songs3: [String] = []
var songs4 = [String]()

var songs5 = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs6 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both2 = songs5 + songs6
both2 += ["Everything has Changed"]

// Dictionaries
var person = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
            ]

person["middle"]
person["month"]

// Conditional statements
var action1: String
var person1 = "hater"

if person1 == "hater" {
    action1 = "hate"
} else if person1 == "player" {
    action1 = "play"
} else {
    action1 = "cruise"
}

var action2: String
var stayOutTooLate2 = true
var nothingInBrain2 = true

if stayOutTooLate2 && nothingInBrain2 {
    action2 = "cruise"
}
if !stayOutTooLate2 && !nothingInBrain2 {
    action2 = "cruise"
}

// Loops
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

var str = "Fakers gonna"
for _ in 1...5 {
    str += " fake"
}
print(str)

var songs7 = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]
for song in songs7 {
    print("My favorite song is \(song)")
}

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]
for i in 0...3 {
    print("\(people[i]) gonna \(actions[i])")
}
for i in 0..<people.count {
    var str = "\(people[i]) gonna"

    for _ in 1...5 {
        str += " \(actions[i])"
    }
    print(str)
}

var counter = 0
while true {
    print("Counter is now \(counter)")
    counter += 1

    if counter == 556 {
        break
    }
}

var songs8 = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]
for song in songs8 {
    if song == "You Belong with Me" {
        continue
    }
    print("My favorite song is \(song)")
}


// Switch case
let liveAlbums = 2
switch liveAlbums {
case 0:
    print("You're just starting out")
case 1:
    print("You just released iTunes Live From SoHo")
case 2:
    print("You just released Speak Now World Tour")
default:
    print("Have you done something new?")
}

let studioAlbums = 5
switch studioAlbums {
case 0...1:
    print("You're just starting out")
case 2...3:
    print("You're a rising star")
case 4...5:
    print("You're world famous!")
default:
    print("Have you done something new?")
}
