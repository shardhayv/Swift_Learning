import Foundation;

let myFirstName = "Shardhay"
let myLastName = "Vatshyayan"


//let is immutable 
// myFirstName = myLastName (not possible with let)

// Exceptions are there like NSMutableArray where let acts mutable
let mutableNames = NSMutableArray(
    array: [
        "Hello",
        "World", 
    ]
)

func changeImmutableArray(_ array: NSArray){
    let newArray = array as! NSMutableArray
    newArray.add("Okay")


}

changeImmutableArray(mutableNames)

print(mutableNames)

// var is mutable
var names = [
    myLastName, myFirstName
]

names.append("BN")
names.append("Thakur")





print(names)