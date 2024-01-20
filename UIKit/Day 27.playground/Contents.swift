import UIKit

class Singer {
    func playSong() {
        print("Shake it off!")
    }
}


/// Strong capturing

func sing1() -> () -> Void {
    let taylor = Singer()

    let singing = {
        taylor.playSong()
        return
    }

    return singing
}

let singFunction1 = sing1()
singFunction1()


/// Weak capturing

func sing2() -> () -> Void {
    let taylor = Singer()

    let singing = { [weak taylor] in
        taylor?.playSong()
        return
    }

    return singing
}

let singFunction2 = sing2()
singFunction2()

func sing3() -> () -> Void {
    let taylor = Singer()

    let singing = { [weak taylor] in
        taylor!.playSong()
        return
    }

    return singing
}

//let singFunction3 = sing3()
//singFunction3()


/// Unowned capturing

func sing4() -> () -> Void {
    let taylor = Singer()

    let singing = { [unowned taylor] in
        taylor.playSong()
        return
    }

    return singing
}

//let singFunction4 = sing4()
//singFunction4()


//writeToLog { [weak self] user, message in
//    self?.addToLog("\(user) triggered event: \(message)")
//}


/// Strong reference cycles

class House {
    var ownerDetails: (() -> Void)?

    func printDetails() {
        print("This is a great house.")
    }

    deinit {
        print("I'm being demolished!")
    }
}

class Owner {
    var houseDetails: (() -> Void)?

    func printDetails() {
        print("I own a house.")
    }

    deinit {
        print("I'm dying!")
    }
}

print("Creating a house and an owner 1")

do {
    let house = House()
    let owner = Owner()
}

print("Done 1")


print("Creating a house and an owner 2")

do {
    let house = House()
    let owner = Owner()
    house.ownerDetails = owner.printDetails
    owner.houseDetails = house.printDetails
}

print("Done 2")


print("Creating a house and an owner 3")

do {
    let house = House()
    let owner = Owner()
    house.ownerDetails = { [weak owner] in owner?.printDetails() }
    owner.houseDetails = { [weak house] in house?.printDetails() }
}

print("Done 3")


/// Accidental strong references

func sing() -> () -> Void {
    let taylor = Singer()
    let adele = Singer()

    let singing = { [unowned taylor, unowned adele] in
        taylor.playSong()
        adele.playSong()
        return
    }

    return singing
}

//[unowned taylor, unowned adele]

class Singer2 {
    init() {
        playSong()
    }

    func playSong() {
        print("Shake it off!")
    }
}


/// Copies of closures

var numberOfLinesLogged = 0

let logger1 = {
    numberOfLinesLogged += 1
    print("Lines logged: \(numberOfLinesLogged)")
}

logger1()


let logger2 = logger1
logger2()
logger1()
logger2()
