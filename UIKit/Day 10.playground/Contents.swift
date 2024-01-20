import UIKit

class Dog {
    var name: String
    var breed: String
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}
class Poodle2: Dog2 {
    override func makeNoise() {
        print("Yip!")
    }
}
let poppy2 = Poodle2()
poppy2.makeNoise()

final class Dog3 {
    var name: String
    var breed: String
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

class Person {
    var name = "John Doe"
    init() {
        print("\(name) is alive! 1")
    }
    func printGreeting() {
        print("Hello, I'm \(name) 2")
    }
    deinit {
        print("\(name) is no more! 3")
    }
}
for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}
    
class Singer3 {
    var name = "Taylor Swift 1"
}

let taylor = Singer3()
taylor.name = "Ed Sheeran 1"
print(taylor.name)
class Singer4 {
    let name = "Taylor Swift 2"
}

let taylor2 = Singer4()
print(taylor2.name)
