import Foundation

// making function without arguments and return value

func printingValue(){
    print("Just printing value")
}

printingValue()

// func add(a:Int, b:Int){
func add(a:Int, b:Int)->Int{
    return a + b
    
}

let sum = add(a: 2, b: 4)
print(sum)

// add _ for unnamed arguments at call sight

// we can use @discardableResult to make this use without assigning a variable
@discardableResult
func sub(_ lhs:Int, _ rhs:Int) -> Int{
    return lhs - rhs
}

print(sub(20, 10))

func doSomethingComplicated(with value:Int)->Int{
    func mainLogic(value:Int)->Int{
        value+2
    }
    return mainLogic(value: value+5)
}

print(doSomethingComplicated(with: 50))


// giving default value in function

func getFullName(firstName:String="Shardhay"
                , lastName:String="Vatshyayan")->String{
                    "\(firstName) \(lastName)"
                }
// calling without argument
print(getFullName())

// calling with only firstName
print(getFullName(firstName: "Bhagwan"))

// calling with only lastName
print(getFullName(lastName: "Bhagwan"))


// calling with argument
print(getFullName(firstName: "Sarvanand", lastName: "Saraswati"))


