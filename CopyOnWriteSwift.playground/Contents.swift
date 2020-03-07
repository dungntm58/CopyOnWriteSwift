//: Playground - noun: a place where people can play

import CopyOnWriteSwift

struct Foo {
    mutating func mutatingMethod() {}
}

@CopyOnWrite
var foo1 = Foo()        // memory_address: 0x60000006e420

var foo2 = foo1         // memory_address: 0x60000006e420

foo2.mutatingMethod()   // memory_address: 0x6080000a88a0
