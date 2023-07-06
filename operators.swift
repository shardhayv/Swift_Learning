import Foundation

let myAge = 22
let yourAge = 21

//1. binary infix

// greater than and smaller than

if myAge > yourAge{
    print("I'm older than you ")
}else if myAge < yourAge{
    print("I'm younger than you ")
} else {
    print("We're of same age ")
}


// plus operator

let herAge = myAge + 2

// multiplication operator
let elvesAge = myAge*20


//2. unary prefix

let hello = !true

//3. unary postfix

let name = Optional("Shardhay")

print(type(of: name))

let unaryPostfix = name!
print(type(of: unaryPostfix))

//4. ternary operator

// structure

// let message = Condition ? Value if condition is met : Value if condition is not met

let age = 29

let message = age >= 25 
                    ? "You're eligible for MLA Candidate" 
                    : "You need to wait"

print(message)

