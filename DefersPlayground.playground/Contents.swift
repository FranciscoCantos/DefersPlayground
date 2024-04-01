import UIKit

var value = 0
func exampleOperation() -> Int {
    defer {
        value = value+1
    }
    return value
}

//print("Operation returns \(exampleOperation())")
//print("Value: \(value)")
// As you can see the defers code is executed after return

func examplePrintsOperation() {
    print("Print 1")
    defer {
        print("Print 2")
    }
    print("Print 3")
}

//examplePrintsOperation()
// As you can see the defers code is executed after return

func examplePrintsOperation2() {
    print("Print 1")
    defer {
        print("Print 2")
    }
    defer {
        print("Print 3")
    }
    defer {
        print("Print 4")
    }
    print("Print 5")
}
//examplePrintsOperation2()
// You can see the order of executions when is more than one

func examplePrintsOperation3() {
    print("Print 1")
    defer {
        print ("Print 2.1")
        defer {
            print ("Print 2.2")
        }
        print("Print 3")
    }
    print("Print 4")
}
examplePrintsOperation3()
// You can see the order of executions when are anidated
