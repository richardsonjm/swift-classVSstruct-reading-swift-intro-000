//: Playground - noun: a place where people can play

import UIKit

// Question 1
// The following line won't run because homePlanet defined using let in the initial class definition.
//fred.homePlanet = "Mars"

// Question 2
// homePlanet Defined using var below which allows for mutablity

class Giant {
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")

fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"

// Question 3
// None of the lines below run.
// Structs are a 'value' type (classes are a 'reference' type) so once defined as a let it cannot be changed
//bilbo.name = "Jake"
//bilbo.height = 1.42
//bilbo.homePlanet = "Saturn"

// Question 4
// defining bilbo as a var allows the underlying object to be mutable

struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}

var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")

bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"

// Question 5
let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"
edgar.name
jason.name
// Value or edgar.name is 'Jason' because edgar and jason refer to the same underlying Giant object.
// When you change the name of that object through jason, it also changes the object underlying edgar
// value of jason name is also 'Jason' for the reason stated above


// Question 6
var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"
charles.homePlanet
charlesFromJupiter.homePlanet
// When charlesFromJupiter is assigend the value of charles, it is assigend a copy of that value. 
// So when you change the value of the copy, it doesn't change the value of the original. 

// Question 7
// This code does not work because function definitions missing the mutating keyword

// Question 8

struct BankAccount {
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
}

// Question 9
var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)

// value of joeAccount.balance is 50 because 50.0 has been withdrawn
joeAccount.balance
// value of joeOtherAccount.balance is still 100 because joeOtherAccount a copy of joeAccount before withdrawl
// Being a copy, changes to the original object do not affect it.
joeOtherAccount.balance

// Question 10
class MusicLibrary {
    var tracks: [String]
    
    init() {
        tracks = []
    }
    
    func add(track: String) {
        tracks.append(track)
    }
}

let library1 = MusicLibrary()
library1.add(track: "Michelle")
library1.add(track: "Voodoo Child")
let library2 = library1
library2.add(track: "Come As You Are")
// Both library1 and library2 contain the same set of tracks
// They are references to the same underlying objects
library1.tracks
library2.tracks
