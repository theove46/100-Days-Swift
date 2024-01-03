import UIKit

struct User {
    var username: String
}
var user = User(username: "twostraws")
struct User2 {
    var username: String
    init() {
        username = "Anonymous"
        print("\(username) Creating a new user!")
    }
}
var user2 = User2()
user2.username = "twostraws"

struct Person {
    var name: String
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
var person = Person(name: "Taylor")

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct Person2 {
    var name: String
    var familyTree = FamilyTree()
    init(name: String) {
        self.name = name
    }
}
var ed = Person2(name: "Ed")
var familyTree = FamilyTree()
ed.familyTree

struct Student {
    var name: String
    init(name: String) {
        self.name = name
    }
}
let ed2 = Student(name: "Ed")
let taylor = Student(name: "Taylor")
struct Student2 {
    static var classSize = 0
    var name: String
    init(name: String) {
        self.name = name
        Student2.classSize += 1
    }
}
print(Student2.classSize)

struct Person3 {
    private var id: String
    init(id: String) {
        self.id = id
    }
    func identify() -> String {
        return "My social security number is \(id)"
    }
}
let ed3 = Person3(id: "12345")
print(ed3)
