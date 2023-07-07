import Foundation

// func add (_ lhs: Int, _ rhs: Int)-> Int {
//     lhs + rhs
// }


func customAdd(
    _ lhs: Int,
     _ rhs: Int,
     using function : (Int , Int) -> Int
) -> Int {
        function(lhs, rhs)
     }

let add : (Int, Int) -> Int = {
    (lhs : Int, rhs : Int) -> Int in
    lhs + rhs
}

print(add(3,4))


// print(add(
//    20,
//    30 
//   ) 
//   { (lhs , rhs ) in
//     lhs + rhs
// }
// )

print(customAdd(
   20,
   30 
  ) 
  {$0 + $1 }
)

let ages = [10, 9 , 12 , 4, 50]

// doing explicitly to sort using closure

// let newAge = ages.sorted(by:
//      {(lhs : Int, rhs : Int)-> Bool in 
//     lhs < rhs
// })


// doing in just oneLine of code 

let newAge = ages.sorted(by:<)

print(newAge)

// adding closure arguments at top 

@discardableResult
func customAdd2(
    using function : (Int , Int) -> Int,
    _ lhs: Int,
     _ rhs: Int   
) -> Int {
        function(lhs, rhs)
     }


print(customAdd2(using:{$0 + $1 + 10},
30,
30
))


func add10TO( value : Int) -> Int {
    value + 10
}

func add20TO( value : Int) -> Int {
    value + 20
}

func doAddition( 
    on value : Int ,
     using function : (Int) -> Int
     ) -> Int {
    function(value)
}

print(doAddition(on: 90,
using : add10TO(value:)
))

print(doAddition(on: 90,
using : add20TO(value:)
))