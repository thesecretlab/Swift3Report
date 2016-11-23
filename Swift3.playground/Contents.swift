//: Playground - noun: a place where people can play

import UIKit


var numbers = [5, 17, 1]


numbers.sort()


print(numbers)


var moreNumbers = [10, 42, 3]

print(moreNumbers.sorted()) // prints [3, 10, 42]

print(moreNumbers) // prints [10, 42, 3], unchanged


//myArray.insert("Fido", atIndex: 10)
//
//
//myArray.insert("Fido", at: 10)


//"Take command, Mr Riker".stringByReplacingOccurrencesOfString("command", withString: "the conn")


"Take command, Mr Riker".replacingOccurrences(of: "command", with: "the conn")


//let q = x++ // post-increment, returning a copy of x before it's incremented
//
//let p = ++x // pre-increment, returning a copy of x after it's incremented


var x = 1

x = x + 1 // x is now 2

x = x - 1 // x is now 1


//var x = 1
//
//x += 1 // x is now 2
//
//x -= 1 // x is now 1

//var i = 0
//
//for (i = 1; i <= 5; i = i + 1) {
//    
//    print(i)
//    
//}


for i in 1...5 {
    
    print(i)
    
}


(1...5).forEach{
    
    print($0)
    
}


//let queue = dispatch_queue_create("com.test.myqueue", nil)
//
//dispatch_async(queue) {
//    
//    print("Hello World")
//    
//}


let queue = DispatchQueue(label: "com.test.myqueue")

queue.async {
    
    print("Hello World")
    
}


//Dog.feedFoodType(specialMix, quantity: 5)
//
//
//Dog.feed(foodType: specialMix, quantity: 5)


//let formatter = NSMassFormatter()


let formatter = MassFormatter()



var arrayOfStrings : [String]


//func foo(var i: Int) {
//    i += 1
//}


func foo(i: Int) {
    var localI = i
    localI += 1
}


//control.sendAction("doSomething", to: target, forEvent: event)
//
//
//control.sendAction(#selector(MyApplication.doSomething), to: target, forEvent: event)
//
//
//UIControlEvents.EditingDidBegin


UIControlEvents.editingDidBegin


Float.pi

Double.pi


let r = 3.0 / .pi


@discardableResult

func add(a: Int, b:Int) -> Int {
    return a + b
}

add(a: 1,b: 2)


func a() {
    
    print ("I'm in \(#function) in \(#file) at line \(#line) column \(#column)")
    
}

a()


