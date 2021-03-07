protocol Stuff {
    func doStuff()
}

class Handler {
    var delegate: Stuff?
    
    func doTheThing() {
        delegate?.doStuff()
    }
}

struct StructThatWillPerformTheStuff: Stuff {
    init(handler: Handler) {
        handler.delegate = self
    }
    
    func doStuff() {
        print("The stuff!")
    }
}


class ClassThatWillToItToo: Stuff {
   init(handler: Handler) {
        handler.delegate = self
    }
    
    func doStuff() {
        print("The stuff from class")
    }
}

var handlerObj = Handler()
var structObj = StructThatWillPerformTheStuff(handler: handlerObj)
var classObj = ClassThatWillToItToo(handler: handlerObj)

// Last one that will do, will do!
// This is not the Observer pattern

handlerObj.doTheThing()
